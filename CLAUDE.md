# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project overview

This repo authors Metanorma AsciiDoc sources for two related outputs:

1. **Encoding/usage guidelines for NISO STS** (ANSI/NISO Z39.102-2022) as published by ISO, IEC, and NISO. The authoritative source PDFs and the NISO STS Tag Library HTML live under `reference-docs/` and are converted to AsciiDoc under `sources/`.
2. **OIML X 999:2026** — the OIML profile of NISO STS, derived from _Guidelines for coding ed.2.1.pdf_ to define how OIML publications (R/B/D/G/E) are encoded in NISO STS.

It also ships a Ruby converter (`StsSpecs::Converter`) that turns OIML Metanorma presentation XML into OIML NISO STS XML per the X 999 rules. Outputs for every `mn-samples-oiml` document are under `sources/oiml-samples-sts/`.

Documents are authored in Metanorma AsciiDoc and built with `metanorma-cli`. The sibling repo `~/src/mn/mn-samples-oiml/` is the source-of-truth for OIML sample inputs to the converter.

## Document classes (decided)

| Output family | `:mn-document-class:` | Notes |
|---|---|---|
| ISO/IEC NISO STS guideline derivatives (Tag Library, Coding Changes, etc.) | `generic` | These documents describe how ISO/IEC encode their standards in NISO STS, but they aren't real ISO publications. The `iso` class strictly validates `:docidentifier:` against the ISO PubID grammar, which their identifiers fail; `generic` builds cleanly. Set `:publisher: ISO/IEC` or `:publisher: NISO` to retain attribution. |
| OIML X 999:2026 (the new encoding spec) | `oiml` | Uses the dedicated OIML flavor from `metanorma-oiml`. |
| ASO 1003:2026 (legacy sample) | `generic` | Fictional SDO. Use `:publisher: Acme Standards Organization`. |

## ASO profile (minimal, decided)

The ASO SDO profile is intentionally tiny. Anchor authoring of `sources/aso-1003-2026/` to:

- **Name / abbreviation:** Acme Standards Organization / ASO.
- **Identifier scheme:** `ASO <num>:<year>` (e.g. `ASO 1003:2026`).
- **Document types:** `standard` (default), `technical-report` (`ASO TR <num>:<year>`), `technical-specification` (`ASO TS <num>:<year>`).
- **Official language:** English.
- **Base vocabulary:** NISO STS 1.2 (ANSI/NISO Z39.102-2022) unmodified.
- **Constraints over base:** require `<permission>` on any reused content; forbid `<self-uri>` inside `<self-xref>`; require `<title>` and `<pub-date>` on every `<std>`.

Do not invent ASO features beyond what the source _Guidelines for coding ed.2.1.pdf_ requires.

## Build commands

The Gemfile is not yet created. When bootstrapping, mirror `~/src/mn/mn-samples-oiml/Gemfile` (`metanorma-cli` + `mn2pdf`). Then:

```sh
bundle install
bundle exec metanorma sources/<slug>/document.adoc          # one document
bundle exec metanorma site generate                          # full site from metanorma.yml
```

## Source structure (strict convention)

- `metanorma.yml` — site manifest listing every `document.adoc` and `collection.yml` to build.
- `sources/<slug>/document.adoc` — main entry per document. Header attributes (`:docidentifier:`, `:doctype:`, `:mn-document-class:`, etc.) then `include::sections/*.adoc[]` lines.
- `sources/<slug>/sections/` — **one file per `==` clause** (the clause level below the `=` document title). Deeper subsections (`===`, `====`) stay inline within their parent file. Convention matches `mn-samples-oiml`.
- `sources/<slug>/images/` — figures.
- `sources/<slug>/collection.yml` — only for multi-part documents.

Slugs are kebab-case and stable (they appear in URLs and identifiers). Pick one when adding a document and stick with it.

## Reference documents (inputs — never modify)

`reference-docs/` holds the source material we are deriving from. **Treat every file here as irreplaceable source.** Never delete, rename, or overwrite files in this directory (see the global rule on never deleting source files). Specifically:

- `Guidelines for coding ed.2.1.pdf` — **primary input for ASO 1003:2026.** Encoding guidelines for ISO STS.
- `Coding Changes ed 2.1.pdf` — delta list against the previous edition.
- `NISO-STS-1-2-compare-1-0.pdf`, `NISOSTS-guidelines-v1.0.pdf`, `Z39.102-2022.pdf` — NISO-published reference specs.
- `NISO-STS-TL-1-2-html/` — Mulberry/NISO Tag Library, 116 chapters + 354 element pages. Source for the Z39.102-2022-aimed AsciiDoc conversion.
- `NISO-STS-extended-1-MathML3-XSD/`, `isosts-v1/`, `isosts-example/` — XSD schemas and sample XML. Reference only; not built.

Tag Library HTML pages use Mulberry's standard tag-library chrome (jQuery, `taglib.js`, shared CSS). When converting, the substantive content starts at `<body ...><div id="text">` — strip nav/script chrome.

## PDF → AsciiDoc OCR workflow

PDFs in `reference-docs/` are image-based and require OCR before authoring. The codebase does **not** vendor its own OCR client — use the shared GLM OCR client from the sibling project:

- Client code: `~/src/oimlsmart/publications/lib/oiml/pub_parse/ocr/client.rb` (Z.AI `layout_parsing` endpoint, model `glm-ocr`).
- API key: `$Z_AI_API_KEY` env var, or `~/.zai-api-key` (see `ocr/api_key.rb`).
- Cache location: **`reference-docs/.glm-ocr-cache/`** (committed to git, not ignored) — `<basename>.p<start>-<end>.{json,md}` keyed by canonical URL + page range. Cache is interoperable across projects, so reuse rather than re-OCR.
- Pre-flight tools required on PATH: `pdfinfo` (poppler) for page counts, `pdftk` for splitting PDFs over 100 pages.
- In-project wrapper: `StsSpecs::Ocr::Runner` (under `lib/sts_specs/ocr/`) — pre-configures the cache path so callers don't repeat it. Invoke via `scripts/ocr-all`.

Typical invocation pattern (from a scratch irb/pry inside `~/src/oimlsmart/publications`):

```ruby
require "oiml/pub_parse"
client = Oiml::PubParse::Ocr::Client.new(
  api_key: Oiml::PubParse::Ocr::ApiKey.read!,
  cache: Oiml::PubParse::Ocr::Cache.new(path: "/Users/mulgogi/src/mn/sts-specs/.glm-ocr-cache")
)
doc = client.ocr_pdf(
  "reference-docs/Guidelines for coding ed.2.1.pdf",
  url: "https://www.iso.org/.../guidelines-coding-2.1.pdf"  # canonical URL for cache key
)
doc.markdown  # => markdown text per chunk
```

The OCR output is a starting transcript, not a finished AsciiDoc source. Always hand-edit into Metanorma AsciiDoc; never commit raw OCR markdown under `sources/`.

## Ruby tooling (conversion libraries)

Any conversion code lives under `lib/sts_specs/` with proper autoload structure — see the global rule against `require_relative` for internal library code. The namespace file `lib/sts_specs.rb` declares top-level autoloads; each sub-namespace (`StsSpecs::Ocr`, `StsSpecs::TagLibrary`, `StsSpecs::Converter`) has its own file declaring child autoloads.

```
lib/sts_specs.rb                       # module StsSpecs + autoloads
lib/sts_specs/ocr.rb                   # module StsSpecs::Ocr + autoloads
lib/sts_specs/ocr/runner.rb            # OCR pipeline driver
lib/sts_specs/ocr/target.rb            # one PDF target value object
lib/sts_specs/ocr/transcript_writer.rb # writes per-slug .md transcripts
lib/sts_specs/tag_library.rb           # module StsSpecs::TagLibrary + autoloads
lib/sts_specs/tag_library/*.rb         # HTML→AsciiDoc converter + auditor
lib/sts_specs/converter.rb             # module StsSpecs::Converter + autoloads
lib/sts_specs/converter/*.rb           # OIML MN-XML → NISO STS XML (16 transformers)
```

Executables under `scripts/` do `$LOAD_PATH.unshift File.expand_path("../lib", __dir__); require "sts_specs"` then call into the library. Specs under `spec/` mirror the lib tree. **Every public method has specs.** No `double()` — use real `StsSpecs::...` instances and small fixtures. No `send` to privates, no `instance_variable_{get,set}`, no `respond_to?` for type checks.

### Converter architecture

The converter mirrors `Metanorma::Iso::Sts::Transformer` (see TODO 15).
Entry point: `StsSpecs::Converter.convert(xml)`.

- `SourceDocument` — Nokogiri façade over the input.
- `Context` — shared state (id generator, footnote collector, bibitem lookup).
- `StsXml` — output builder; every transformer emits through it.
- `BlockDispatcher` — Open/Closed dispatch by source tag name.
- Per-element transformers: `DocumentTransformer`, `FrontTransformer`,
  `BodyTransformer`, `BackTransformer`, `SectionTransformer`,
  `ParagraphTransformer`, `InlineTransformer`, `ListTransformer`,
  `TableTransformer`, `FigureTransformer`, `FormulaTransformer`,
  `NoteTransformer`, `ReferenceTransformer`.

CLI: `scripts/oiml-to-sts <input.xml> [output.xml]`.
Batch: `scripts/oiml-samples-batch [path/to/mn-samples-oiml]`.

## Working with the global rules

Several project-agnostic rules in `~/.claude/CLAUDE.md` apply with full force here:

- **Never delete source.** `reference-docs/` PDFs and HTML are irreplaceable. Derived AsciiDoc never replaces them.
- **No doubles in specs.** If you write Ruby test code in any ancillary tooling here, use real instances, not `double()`.
- **No hand-rolled serialization.** Any model code uses `lutaml-model` declarations, never `def to_h` / `def from_h`.
- **No AI attribution in commits** and **never push tags or commit to `main`** — all changes go through PRs on feature branches.

## Companion repositories

- `~/src/mn/mn-samples-oiml/` — structural template for `metanorma.yml`, `sources/<slug>/`, Gemfile, and CI workflow patterns.
- `~/src/oimlsmart/publications/` — owns the GLM OCR client, `pdfinfo`/`pdftk` pre-flight, and cache format referenced above.
