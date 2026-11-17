# IEC/ISO NISO STS Coding Guidelines ed. 2.1 — machine-checkable rules catalog

Source: `reference-docs/Guidelines for coding ed.2.1.pdf` ("NISO STS 1.2 – IEC/ISO Coding Guidelines", Edition 2.1, 2025-02-17, 116 pages).

Each rule is machine-checkable: it states a constraint a validator (Schematron or pure-Ruby) can assert on a NISO STS XML document. Rule ids `iso-gdg-<section>-<n>` match the `<assert>`/`<report>` ids in `schematron/iso-sts.sch` one-to-one for `severity: error` rules.

- `severity: error` — violating it produces output that contradicts the guidelines' mandatory coding or the NISO STS 1.2 tag set.
- `severity: warning` — recommended practice ("should", "generally") that the guidelines do not make mandatory.

Namespace conventions used in checks: NISO STS elements are in no namespace (root `<standard>`); TBX termEntry content is under `urn:iso:std:iso:30042:ed-1`; ISO-specific metadata under `urn:iso:std:iso:ed-1`.

## 3 General

### 3.4 Elements containing IDs (p. 10)

- id: `iso-gdg-3.4-1`
- section: 3.4 Elements containing IDs
- severity: error
- rule: An element that is the target of a cross-reference always has an ID ("When a cross-reference is made to an element, that element always has an ID").
- check: For every `@rid` in the document, there exists an element whose `@id` equals that value.

- id: `iso-gdg-3.4-2`
- section: 3.4 Elements containing IDs
- severity: warning
- rule: The listed element types (`app-group`, `app`, `code`, `def-item`, `def-list`, `disp-formula`, `fig`, `fig-group`, `graphic`, `inline-code`, `inline-formula`, `inline-graphic`, `legend`, `list-item`, `mml:math`, `mixed-citation`, `p`, `ref`, `ref-list`, `sec`, `std`, `table-wrap`, `table-wrap-foot`, `tbx:example`, `tbx:note`, `tbx:termEntry`, `tbx:tig`, `term-sec`, `xref`) increasingly carry `@id` in OSD output; IDs are otherwise arbitrary (semantic ids are not guaranteed at IEC, guaranteed at ISO only via the legacy eXtyles chain).
- check: Report listed elements lacking `@id` (advisory — "While they're not yet present in all cases"); do not enforce id naming patterns.

## 4 Structure

### 4.1 General (p. 11)

- id: `iso-gdg-4.1-1`
- section: 4.1 General
- severity: error
- rule: The complete document is coded within the root `<standard>`.
- check: Root element is `standard` (or `adoption` per Annex A for translations/adoptions).

- id: `iso-gdg-4.1-2`
- section: 4.1 General
- severity: warning
- rule: The document is divided into front matter, body, and back matter (`<front>`, `<body>`, `<back>`).
- check: `standard` contains `front`, `body`, `back` children (back may be empty of annexes in some documents — flag absence, low priority).

### 4.2 Types of clause (p. 13)

- id: `iso-gdg-4.2-1`
- section: 4.2 Types of clause
- severity: error
- rule: A clause whose title identifies a known clause type is flagged via `@sec-type` on `<sec>` (or `@content-type` in the back matter): Foreword → `foreword` (unnumbered, front), Introduction → `intro` (front, optionally numbered 0), Scope → `scope` (body, clause 1), Normative references → `norm-refs` (body, clause 2), Terms and definitions → `terms` (body, clause 3), annexes → `@content-type` `informative`/`normative` on `<app>`, Bibliography → `@content-type` `bibl` on `<ref-list>`.
- check: For each `sec` in front/body whose `title` matches one of the known clause titles (or whose position/number matches the table), require the corresponding `@sec-type`; for `app` require `@content-type` of `informative`/`normative`; for the bibliography `ref-list` require `@content-type="bibl"`.

### 4.3 Front matter

#### 4.3.1 General (p. 14)

- id: `iso-gdg-4.3.1-1`
- section: 4.3.1 General
- severity: error
- rule: `<front>` is required in ISO/IEC standards.
- check: `standard/front` exists.

#### 4.3.2 Metadata (pp. 14–16)

- id: `iso-gdg-4.3.2-1`
- section: 4.3.2 Metadata
- severity: error
- rule: Organization metadata are not captured in `<std-doc-meta>`; they go in `<std-meta>` (titles, copyright statements, dates), which overrides corresponding `std-doc-meta` data.
- check: Copyright/permissions content occurs under `std-meta`, not under `std-doc-meta` directly.

- id: `iso-gdg-4.3.2-2`
- section: 4.3.2 Metadata
- severity: error
- rule: Copyright information for the current document is captured in the metadata via the `<permissions>` element within `<std-meta>`.
- check: `std-meta/permissions` exists with `copyright-statement`, `copyright-year`, `copyright-holder`.

- id: `iso-gdg-4.3.2-3`
- section: 4.3.2 Metadata
- severity: error
- rule: (ISO coding) all copyright statements are summed up in one `<permissions>` element; (IEC coding) copyright statements are divided into individual `<permissions>` elements within `<std-meta>`.
- check: If the document is ISO-published (originator ISO per `std-meta`), exactly one `permissions`; if IEC-published, one `permissions` per copyright statement.

- id: `iso-gdg-4.3.2-4`
- section: 4.3.2 Metadata
- severity: error
- rule: In adoptions of IEC documents the individual IEC copyright `<permissions>` statements must not be overwritten.
- check: On `adoption` documents whose source is IEC, each IEC `permissions` statement from the source `std-meta` is preserved (statement/year/holder set unchanged).

- id: `iso-gdg-4.3.2-5`
- section: 4.3.2 Metadata
- severity: warning
- rule: If specific conditions exist under which content may be used, accessed, and distributed, the `<license>` element within `<permissions>` provides the license statement.
- check: If license conditions apply, `permissions/license` is present with `license-p` (and address/contact lines in the examples).

- id: `iso-gdg-4.3.2-6`
- section: 4.3.2 Metadata
- severity: error
- rule: `<processing-meta>` is a child of `<standard>` (ed. 2.1); its attributes declare the coding profile: `@base-tagset="interchange"`, `@mathml-version="3.0"`, `@table-model="xhtml"`, `@terminology-model="tbx"`, `@math-representation="mathml"`, `@tagset-family="sts"`.
- check: `standard/processing-meta` exists and carries those attributes with exactly those values.

- id: `iso-gdg-4.3.2-7`
- section: 4.3.2 Metadata
- severity: error
- rule: `<processing-meta>` carries a `<custom-meta-group>` with a `<custom-meta>` whose `<meta-name>` is `iec_iso_coding_guidelines_edition` and `<meta-value>` gives the guidelines edition (e.g. `2.1`).
- check: `processing-meta/custom-meta-group/custom-meta[meta-name='iec_iso_coding_guidelines_edition']/meta-value` exists and is non-empty.

- id: `iso-gdg-4.3.2-8`
- section: 4.3.2 Metadata
- severity: warning
- rule: In the absence of `<processing-meta>`, the XML is assumed to be coded according to the Coding Guidelines ed. 1.11.
- check: Report `standard` documents lacking `processing-meta` (validator cannot then apply ed. 2.1 assumptions).

#### 4.3.3 Foreword (p. 17)

- id: `iso-gdg-4.3.3-1`
- section: 4.3.3 Foreword
- severity: error
- rule: The foreword is required and unnumbered, coded as `<sec>` with `@sec-type="foreword"`; it is the first titled clause.
- check: `front/sec[@sec-type='foreword']` exists, has no `label`, and is the first titled `sec` in the document.

- id: `iso-gdg-4.3.3-2`
- section: 4.3.3 Foreword
- severity: warning
- rule: The foreword should contain no tables or graphics.
- check: No `table-wrap` or `fig`/`graphic` descendants inside the foreword `sec`.

#### 4.3.4 Introduction (p. 17)

- id: `iso-gdg-4.3.4-1`
- section: 4.3.4 Introduction
- severity: error
- rule: The introduction, when present, is coded as `<sec>` with `@sec-type="intro"`.
- check: Any front `sec` titled "Introduction" carries `@sec-type="intro"`.

- id: `iso-gdg-4.3.4-2`
- section: 4.3.4 Introduction
- severity: warning
- rule: If present, the introduction follows the foreword and is generally not numbered (introduction subclauses, where they exist, are numbered 0.1, 0.2 …).
- check: Introduction `sec` appears after the foreword `sec`; intro `sec` has no `label` unless its label matches `0` / `0.x`.

### 4.4 Body

#### 4.4.1 General (p. 18)

- id: `iso-gdg-4.4.1-1`
- section: 4.4.1 General
- severity: error
- rule: `<body>` is required in ISO/IEC documents.
- check: `standard/body` exists.

#### 4.4.2 Clauses and subclauses (pp. 18–20)

- id: `iso-gdg-4.4.2-1`
- section: 4.4.2 Clauses and subclauses
- severity: error
- rule: Clauses are captured in `<sec>`; the clause number is coded as `<label>` within `<sec>` and the title as `<title>` within `<sec>`.
- check: Every numbered `sec` carries `label` (and a `title`, except numbered paragraphs without title); nesting of `sec` mirrors clause hierarchy.

- id: `iso-gdg-4.4.2-2`
- section: 4.4.2 Clauses and subclauses
- severity: error
- rule: The Scope clause is required and is numbered 1, with `@sec-type="scope"`.
- check: `body/sec[@sec-type='scope']` exists with `label` "1" and `title` "Scope".

- id: `iso-gdg-4.4.2-3`
- section: 4.4.2 Clauses and subclauses (Normative references)
- severity: error
- rule: The Normative references clause is required and is numbered 2; if there are no normative references the section is still present with a paragraph stating there are none.
- check: `body/sec[@sec-type='norm-refs']` exists with `label` "2"; it contains either a `ref-list` or a paragraph stating the absence of references.

- id: `iso-gdg-4.4.2-4`
- section: 4.4.2 Normative references content
- severity: error
- rule: Normative references are coded as a `<ref-list>` with `@content-type="norm-refs"`, each reference as a `<ref>` containing a `<std>`.
- check: Inside the norm-refs section, `ref-list[@content-type='norm-refs']/ref/std` structure holds.

- id: `iso-gdg-4.4.2-5`
- section: 4.4.2 Normative references content
- severity: error
- rule: Each normative-reference `<std>` contains a `<std-id>` with `@std-id-link-type="urn"` and `@std-id-type` of `"dated"` or `"undated"` depending on whether the citation is dated; the standard designation is in `<std-ref>` and the title in `<title>` inside `<std>`.
- check: For `ref/std` in norm-refs: `std-id[@std-id-link-type='urn'][@std-id-type='dated' or @std-id-type='undated']` exists; `std-ref` and `title` exist.

- id: `iso-gdg-4.4.2-6`
- section: 4.4.2 Normative references punctuation
- severity: warning
- rule: Punctuation between elements within the normative-references `<ref-list>` is not captured in the XML; it is rendered per house style.
- check: No assertion on punctuation characters in `ref` content (generator must not emit fixed punctuation between `std` parts).

- id: `iso-gdg-4.4.2-7`
- section: 4.4.2 Normative references — non-standard references
- severity: error
- rule: A reference in the normative reference section that is not a standard is coded as it appears (including formatting) using `<mixed-citation>`.
- check: Every `ref` in the norm-refs `ref-list` contains either `std` or `mixed-citation`.

- id: `iso-gdg-4.4.2-8`
- section: 4.4.2 Terms and definitions clause
- severity: error
- rule: The terms and definitions clause is a required clause with `@sec-type="terms"`; its title may vary but will normally contain the words "Terms" and "Definitions"; if there are no terms, a statement to that effect is provided in the clause.
- check: `body/sec[@sec-type='terms']` exists (numbered 3); if it has no `tbx:termEntry` descendants, it contains a paragraph stating that no terms and definitions are listed.

- id: `iso-gdg-4.4.2-9`
- section: 4.4.2 Numbered paragraphs
- severity: error
- rule: Numbered paragraphs are tagged as sections without a title, with `@sec-type="numbered-paragraph"`; the text follows the label directly.
- check: `sec[@sec-type='numbered-paragraph']` has no `title` child and has a `label`.

### 4.5 Back matter

#### 4.5.1 General (pp. 23–24)

- id: `iso-gdg-4.5.1-1`
- section: 4.5.1 General — annexes
- severity: error
- rule: All annexes are coded as `<app>` within an `<app-group>`; `@content-type` is "informative" or "normative".
- check: Every `app` in `back` is inside `app-group` and carries `@content-type` of `informative` or `normative`.

- id: `iso-gdg-4.5.1-2`
- section: 4.5.1 General — annexes
- severity: error
- rule: The word "Annex" and the annex number are coded using `<label>`, and the annex title is contained in `<title>`; the annex type (informative/normative) is derived from `@content-type` on rendering.
- check: Every `app` has a `label` containing the "Annex <letter>" designation and a `title`; the "(informative)"/"(normative)" annex-type line is not tagged as literal content (it is generated from `@content-type`).

- id: `iso-gdg-4.5.1-3`
- section: 4.5.1 Clauses inside annexes
- severity: error
- rule: Clauses inside an annex (A.1, A.1.2 etc.) are tagged as `<sec>`; their `<label>` inherits the label prefix of the parent annex (e.g. A.1, A.2, A.3).
- check: For each `app`, `sec` descendants' `label` values start with the annex letter of the parent `app` label.

#### 4.5.2 Bibliography (pp. 24–25)

- id: `iso-gdg-4.5.2-1`
- section: 4.5.2 Bibliography
- severity: error
- rule: The bibliography is the last element in the document back matter, coded as a `<ref-list>` with `@content-type="bibl"`; when there are no bibliographic references it contains the title and a paragraph stating there are none.
- check: `back/ref-list[@content-type='bibl']` is the last child of `back`; if empty of `ref`, it contains a statement paragraph.

- id: `iso-gdg-4.5.2-2`
- section: 4.5.2 Bibliography
- severity: error
- rule: References inside the bibliography are tagged inside `<ref>`, either as `<std>` (standards documents) or as `<mixed-citation>` (other documents); the normative-references rules apply.
- check: Every `ref` in the bibl `ref-list` contains `std` or `mixed-citation`; `std` follows rule `iso-gdg-4.4.2-5`.

- id: `iso-gdg-4.5.2-3`
- section: 4.5.2 Author names in a reference
- severity: error
- rule: Author names and other details are not coded at any level of granularity; all the information is within `<mixed-citation>`.
- check: Bibliography `ref`/`mixed-citation` contains no `name`/`person-group`/`article-title`-style sub-element splitting of the citation string.

## 5 Content

### 5.1 Spaces, punctuation and formatting (p. 25)

- id: `iso-gdg-5.1-1`
- section: 5.1 Spaces, punctuation and formatting
- severity: warning
- rule: In OSD, spaces and tabs are no longer used to format text; direct formatting is limited to `<bold>`, `<italic>`, `<underline>`, `<strike>`, `<monospace>`, `<sub>`, `<super>`.
- check: Text nodes do not contain runs of multiple spaces/tabs used for layout; direct-formatting elements used are limited to the seven listed.

### 5.2 Using `<label>` and `<title>` (p. 26)

- id: `iso-gdg-5.2-1`
- section: 5.2 Using label and title
- severity: warning
- rule: `<label>` carries numbers at the beginning of elements such as formulae, list items or figures; `<title>` carries designations of elements such as sections, figures, tables; labels and section titles are bolded automatically during rendering, while italic and underline are marked up.
- check: `label`/`title` content contains no `<bold>` (bolding is automatic); italic/underline inside them is allowed.

### 5.5 Symbols for variable quantities (p. 26)

- id: `iso-gdg-5.5-1`
- section: 5.5 Symbols for variable quantities
- severity: warning
- rule: Symbols for variable quantities in flow text are tagged `<named-content>` with `@content-type="variable"`; they are not marked up specially inside MathML formulae.
- check: Variable-quantity symbols in prose use `named-content[@content-type='variable']`; no equivalent tagging inside `mml:math`.

### 5.6 Notes, examples and warnings (pp. 26–27)

- id: `iso-gdg-5.6-1`
- section: 5.6 Notes, examples and warnings
- severity: error
- rule: Notes and examples in regular text are tagged `<non-normative-note>` and `<non-normative-example>` respectively; warnings are notes with the label "WARNING" and `@content-type="warning"`.
- check: Notes use `non-normative-note`, examples use `non-normative-example`; a note labelled WARNING carries `@content-type="warning"`.

- id: `iso-gdg-5.6-2`
- section: 5.6 Notes, examples and warnings
- severity: error
- rule: The designation text (NOTE, EXAMPLE or WARNING, including any numbers or punctuation) is captured in a `<label>`, retaining the capitalisation; they are not otherwise numbered by the tag set.
- check: Every `non-normative-note`/`non-normative-example` starts with a `label` whose text begins "NOTE"/"EXAMPLE"/"WARNING" (with sequential number where more than one per clause).

- id: `iso-gdg-5.6-3`
- section: 5.6 Notes, examples and warnings
- severity: error
- rule: The note/example text is coded with the usual elements used within `<sec>` (e.g. `<p>`, `<list>`); notes/examples inside terminological entries use TBX instead.
- check: `non-normative-note`/`non-normative-example` body content uses `p`/`list` etc.; no bare text.

### 5.7 Lists (pp. 27–29)

- id: `iso-gdg-5.7-1`
- section: 5.7 Lists
- severity: error
- rule: Lists are coded using `<list>`, with each list item tagged as `<list-item>`; `@list-type` is indicated at the list level, with each change of indentation or hierarchical level starting a new list.
- check: No `list` nested directly inside another `list` without an intervening `list-item`; list hierarchies are expressed via `list-item/list`.

- id: `iso-gdg-5.7-2`
- section: 5.7 Lists
- severity: error
- rule: OSD `@list-type` values are: ordered — `alpha-lower`, `arabic`, `roman-lower`; unordered — `dash`, `bullet`; the values `simple` and `roman-upper` exist only in traditional-production-chain XML and do not occur in OSD documents.
- check: Every `list` carries `@list-type` in {alpha-lower, arabic, roman-lower, dash, bullet} (simple/roman-upper reported as legacy).

- id: `iso-gdg-5.7-3`
- section: 5.7 Lists
- severity: error
- rule: All lists are coded outside the preceding `<p>`.
- check: No `list` occurs inside a `p`.

- id: `iso-gdg-5.7-4`
- section: 5.7.1 Lists with labels (ordered lists)
- severity: error
- rule: Within each `<list-item>` the actual number/letter is captured in `<label>` to provide unambiguous human-readable references; rendering of ordered lists is done on the basis of labels; the text of the list item is tagged inside `<p>`.
- check: Every `list-item` has a `label` (for ordered lists matching the expected sequence per the declared `@list-type`) and its text in `p`.

### 5.7.2 Lists without labels (unordered lists) (p. 29)

- id: `iso-gdg-5.7.2-1`
- section: 5.7.2 Lists without labels (unordered lists)
- severity: error
- rule: For unordered lists (`dash`, `bullet`) the label is not present in the XML — it is derived from `@list-type` on rendering.
- check: `list-item` inside `list[@list-type='dash' or @list-type='bullet']` has no `label` child.

- id: `iso-gdg-5.7.2-2`
- section: 5.7.2 Lists without labels / note on IDs (p. 30)
- severity: warning
- rule: Old (legacy) IDs cannot be relied upon as indicating the position of an element inside the document; IDs are arbitrary and must not be parsed for meaning (example shows `id="sec-6.3"` on subclause labelled 6.4 — correct tagging).
- check: No validator logic may derive semantics from `@id` string patterns; generate no assertion on id content.

### 5.8 Specific text alignments (pp. 30–31)

- id: `iso-gdg-5.8-1`
- section: 5.8 Specific text alignments
- severity: error
- rule: Text aligned in columns without column or row borders is laid out inside `<array>` containing a `<table>`; this layout has no formal-table attributes — no `<table-wrap>`, `<caption>`, `<title>`, `<label>`.
- check: `array/table` carries no `caption`/`title`/`label`, and `array` is not inside `table-wrap`.

- id: `iso-gdg-5.8-2`
- section: 5.8 Specific text alignments
- severity: error
- rule: Column width in `array` tables is specified in percent, with "%" after the value.
- check: `col` width attribute values match `^\d+(\.\d+)?%$`.

### 5.9 Quotations (p. 31)

- id: `iso-gdg-5.9-1`
- section: 5.9 Quotations
- severity: error
- rule: An indented block of text (extract or extended quote made typographically distinct) is coded `<disp-quote>`; the source of the quote is captured using `<attrib>` with `@specific-use="source"`, and permissions information using `<permissions>` within `<disp-quote>`.
- check: `attrib` inside `disp-quote` carries `@specific-use="source"`; where a source/permission applies, `disp-quote/permissions` is present.

### 5.10 Graphics (pp. 31–32)

- id: `iso-gdg-5.10-1`
- section: 5.10 Graphics
- severity: error
- rule: Graphics inside figures or as independent block elements are coded `<graphic>`; graphics in the same line as the surrounding text are coded `<inline-graphic>`.
- check: Block-level graphics use `graphic`, inline graphics use `inline-graphic` (inline: `graphic` not allowed inside `p`).

- id: `iso-gdg-5.10-2`
- section: 5.10 Attributes of graphic and inline-graphic
- severity: error
- rule: `@xlink:href` contains the reference to the graphic file without the file extension (e.g. no ".png").
- check: `graphic/@xlink:href` and `inline-graphic/@xlink:href` do not match `\.(png|gif|jpg|jpeg|svg|tif|tiff|eps|pdf)$` (case-insensitive).

- id: `iso-gdg-5.10-3`
- section: 5.10 Attributes of graphic and inline-graphic
- severity: error
- rule: For formal figures the ISO reference does not contain the name of the asset folder (e.g. `xlink:href="fig_A_1"`); the IEC reference contains the name of the asset folder (e.g. `xlink:href="asset/fig-A_1"`).
- check: If the document is ISO-published, `xlink:href` on figure graphics has no folder prefix (no "/"); if IEC-published, it starts with the asset folder name (e.g. `asset/`).

- id: `iso-gdg-5.10-4`
- section: 5.10 Attributes of graphic and inline-graphic
- severity: error
- rule: `@specific-use` (optional) indicates the relative size of the graphic with values `size:T` (thumbnail), `size:S`, `size:M`, `size:L`; `size:T` is not enabled on `<inline-graphic>`.
- check: `@specific-use` values are within the four listed values; no `inline-graphic[@specific-use='size:T']`.

### 5.11 Code (pp. 32–33)

- id: `iso-gdg-5.11-1`
- section: 5.11 Code
- severity: error
- rule: Technical content (programming language code, pseudo-code, schemas, DTDs, markup fragments) is tagged `<inline-code>` when in line with surrounding text, or `<code>` for code blocks.
- check: Code content appears in `code` (block) or `inline-code` (inline), not as plain styled text.

- id: `iso-gdg-5.11-2`
- section: 5.11 Code
- severity: warning
- rule: Whitespace is preserved within `<code>`/`<inline-code>`; rendering uses monospace characters.
- check: No assertion; generator must not collapse whitespace inside `code`/`inline-code`, renderer must use monospace.

## 6 Tables

### 6.1 General (p. 33)

- id: `iso-gdg-6.1-1`
- section: 6.1 General
- severity: error
- rule: Tables are coded using XHTML; nested tables are not permitted.
- check: No `table` element inside another `table` (no `td`/`th` descendant `table`).

- id: `iso-gdg-6.1-2`
- section: 6.1 General
- severity: error
- rule: The width of the table is determined with `@width` with values indicating the desired width on a page: 33%, 66%, 100%; absence of `@width` means no specific width is required.
- check: `table/@width` (when present) is one of `33%`, `66%`, `100%`.

- id: `iso-gdg-6.1-3`
- section: 6.1 General
- severity: warning
- rule: The width of table columns is defined using `@width` inside `<col>` within `<table>`.
- check: Column widths are carried by `col/@width` (percent strings) rather than by per-cell styling.

### 6.2 Formal and informal tables (pp. 33–34)

- id: `iso-gdg-6.2.1-1`
- section: 6.2.1 Informal tables
- severity: error
- rule: An informal table has no caption (label and title) and is captured as a `<table>` in `<array>`; its use for keys to formulae is deprecated, replaced by `<legend>`.
- check: A captionless table occurs only inside `array`; no `array` used to hold a formula key (formula keys use `legend`, see 7).

- id: `iso-gdg-6.2.2-1`
- section: 6.2.2 Formal tables
- severity: error
- rule: A formal table consists of a table with a label and a title, captured within `<table-wrap>`; `<label>` (directly below `<table-wrap>`) contains the label without punctuation, and inside `<caption>` the `<title>` contains the title.
- check: Every `table-wrap` has a `label` child (text without trailing punctuation) and a `caption/title`.

- id: `iso-gdg-6.2.2-2`
- section: 6.2.2 Table headers and footers
- severity: error
- rule: Table headers and footers are coded in `<thead>` and `<table-wrap-foot>` respectively.
- check: Header rows appear in `thead`; footer content in `table-wrap-foot` (both inside `table-wrap`).

- id: `iso-gdg-6.2.2-3`
- section: 6.2.2 Table notes and footnotes
- severity: error
- rule: Table notes and footnotes (and any other content in a table footer) are coded inside `<table-wrap>` within `<table-wrap-foot>`; footnotes are coded in `<fn>`, notes as `<non-normative-note>`, other contents inside `<p>`.
- check: `table-wrap-foot` children are `fn`, `non-normative-note`, or `p` only.

- id: `iso-gdg-6.2.2-4`
- section: 6.2.2 Table notes and footnotes
- severity: error
- rule: References to table footnotes (footnotes associated with the table and contained within `<table-wrap>`) are contained in `<xref>` with `@ref-type="table-fn"`.
- check: `xref[@ref-type='table-fn']` values of `@rid` resolve to `fn` elements inside a `table-wrap` of the same table context.

- id: `iso-gdg-6.2.2-5`
- section: 6.2.2 Notes in tables
- severity: error
- rule: Notes in tables can appear inside a cell (inside `<td>`) or after the last row of the table (inside `<table-wrap-foot>`).
- check: `non-normative-note` inside a `table` context occurs only within `td` or `table-wrap-foot`.

- id: `iso-gdg-6.2.2-6`
- section: 6.2.2 Unit statements in table headers
- severity: warning
- rule: When units used in a column are indicated in a table header, they are coded in a separate `<p>` inside the `<th>` elements; `<bold>` is generally applied to `<th>` content but is removed for the unit statement.
- check: Unit `p` inside `th` contains no `bold`.

- id: `iso-gdg-6.2.2-7`
- section: 6.2.2 Unit statements for the entire table
- severity: error
- rule: Text describing the units used in the table is captured as `<p>` with `@content-type="dimension"` in `<table-wrap-foot>`.
- check: Whole-table unit statements appear as `table-wrap-foot/p[@content-type='dimension']`.

### 6.3 Table cell styling (pp. 37–39)

- id: `iso-gdg-6.3.1-1`
- section: 6.3.1 Alignment
- severity: error
- rule: `@align` is used for horizontal alignment with values `left` (default), `center`, `right`, `justify`; `@valign` for vertical alignment with values `top` (default), `middle`, `bottom`.
- check: `@align`/`@valign` values on table elements are within those enumerations.

- id: `iso-gdg-6.3.2-1`
- section: 6.3.2 @style for borders
- severity: warning
- rule: `@style` describes borders in sequence (order: border-left, border-top, border-right, border-bottom), only for values deviating from the table level; border style values are `solid`, `dashed`, `dotted`; border widths are in px with preferred values 1 to 5px; borders between adjacent cells have identical values for both cells.
- check: `td/@style`/`th/@style` border declarations use the listed style values and px widths in the 1–5px preferred range; adjacency consistency is advisory.

- id: `iso-gdg-6.3.2-2`
- section: 6.3.2 @style background colour
- severity: warning
- rule: Cell background colour is given as `background-color` in hexadecimal; it is dropped when no colour is used, except where the table defines a background colour at table level (cells with none then carry `background-color: none`); preferred values are `#EFEEF`, `#D4D4D4`, `#BCBCBC`.
- check: `background-color` values are hexadecimal, preferably from the three listed values.

### 6.4 Merged cells (p. 39)

- id: `iso-gdg-6.4-1`
- section: 6.4 Merged cells
- severity: error
- rule: Merged cells are captured by `@rowspan` or `@colspan` in `<td>` within `<table>`; the value is the number of rows and columns being merged.
- check: `rowspan`/`colspan` values are positive integers.

### 6.5 Line breaks and lists within a table (p. 39)

- id: `iso-gdg-6.5-1`
- section: 6.5 Line breaks and lists within a table
- severity: error
- rule: A soft break in a table cell is coded with `<break/>`; a new paragraph is coded with `<p>`; `<list>` is allowed in table cells.
- check: Table cell line breaks use `break`, paragraphs use `p`; `list` permitted inside `td`.

### 6.6 Landscape tables (pp. 39–40)

- id: `iso-gdg-6.6-1`
- section: 6.6 Landscape tables
- severity: error
- rule: The orientation of a table is contained inside `<table-wrap>` with `@orientation`; landscape tables are coded with `@orientation="landscape"` (default "portrait" is usually not indicated).
- check: `table-wrap/@orientation` (when present) is `landscape` or `portrait`.

## 7 Formulae and equations

### 7.1 Elements and attributes (p. 41)

- id: `iso-gdg-7.1-1`
- section: 7.1 Elements and attributes
- severity: error
- rule: A full formula/equation separate from the surrounding text is coded `<disp-formula>`; one embedded in the flow of text is captured in `<inline-formula>`.
- check: Block formulas use `disp-formula`; in-text formulas use `inline-formula` (no `disp-formula` inside `p`).

- id: `iso-gdg-7.1-2`
- section: 7.1 Elements and attributes
- severity: error
- rule: The formula number is captured as a `<label>` within the `<disp-formula>` (e.g. "(1)"); numbering is sequential and independent throughout the document, with annexed formulae prefixed by the annex letter.
- check: Every `disp-formula` has a `label`; `inline-formula` carries no `label`; labels are unique.

### 7.2 Notes to formulae (p. 41)

- id: `iso-gdg-7.2-1`
- section: 7.2 Notes to formulae
- severity: error
- rule: `<disp-formula>` elements can have notes coded as `<non-normative-note>` after the `<mml:math>` element.
- check: Any `non-normative-note` inside `disp-formula` is positioned after the `mml:math` child.

### 7.3 Formula keys (pp. 41–42)

- id: `iso-gdg-7.3-1`
- section: 7.3 Formula keys
- severity: error
- rule: Formula keys are coded as `<legend>` inside `<disp-formula>`; there can be only one `<legend>` for each `<disp-formula>`.
- check: `count(disp-formula/legend) le 1`.

- id: `iso-gdg-7.3-2`
- section: 7.3 Formula keys
- severity: error
- rule: Inside the formula-key `<legend>`, `<title>` contains the word "where" and is followed by a `<def-list>`; each `<def-item>` inside the `<def-list>` contains a pair of `<term>` and `<def>`.
- check: `legend/title` is "where"; `legend/def-list` exists (examples use `@list-content="formula"`); each `def-item` has `term` and `def`.

### 7.4 MathML (p. 42)

- id: `iso-gdg-7.4-1`
- section: 7.4 MathML
- severity: error
- rule: The mathematical expression within `<disp-formula>` or `<inline-formula>` is coded using `<mml:math>`; if one `<disp-formula>` contains more than one mathematical expression laid out on separate lines, these are contained in one `<mml:math>`.
- check: Each `disp-formula`/`inline-formula` contains exactly one `mml:math` child.

## 8 Figures

### 8.1 Elements and attributes (pp. 42–43)

- id: `iso-gdg-8.1-1`
- section: 8.1 Elements and attributes
- severity: error
- rule: The figure is coded in `<fig>`; `@orientation` can have the values "landscape" or "portrait" (portrait is the default and mostly not indicated).
- check: `fig/@orientation` (when present) is `landscape` or `portrait`.

- id: `iso-gdg-8.1-2`
- section: 8.1 Elements and attributes
- severity: error
- rule: Within `<fig>`: the figure number is coded in `<label>`, the figure designation in `<title>` within `<caption>`, the image file in `<graphic>` (see 5.10), figure notes in `<non-normative-note>` after `<graphic>`, and paragraphs between the graphic and the figure designation in `<p>`.
- check: `fig` has `label` and `caption/title`; `non-normative-note` inside `fig` comes after `graphic`; a figure has at least one `graphic` and a designation.

### 8.2 Sub-figures and multiple graphics within a figure (p. 43)

- id: `iso-gdg-8.2-1`
- section: 8.2 Sub-figures and multiple graphics within a figure
- severity: error
- rule: Figures with more than one graphic are organised either as one `<fig>` with individual `<graphic>` children, or as a `<fig-group>` with different sub-figures (multiple `<fig>` children); in the group case there is only one `<legend>` for the entire group, at the `<fig-group>` level.
- check: `count(fig-group/legend) le 1`; `fig-group` children are `fig` elements.

- id: `iso-gdg-8.2-2`
- section: 8.2 Sub-figures and multiple graphics within a figure
- severity: error
- rule: Notes and examples have to remain at the sub-figure (`<fig>`) level — they are not permitted at `<fig-group>` level in NISO STS; notes/examples concerning the entire `<fig-group>` usually appear inside the last `<fig>` element.
- check: No `non-normative-note`/`non-normative-example` child of `fig-group`.

### 8.3 Figure keys (pp. 43–44)

- id: `iso-gdg-8.3-1`
- section: 8.3 Figure keys
- severity: error
- rule: Figure keys are coded as `<legend>` inside `<fig>`; there can be only one `<legend>` for each `<fig>` (and each `<fig-group>`).
- check: `count(fig/legend) le 1`.

- id: `iso-gdg-8.3-2`
- section: 8.3 Figure keys
- severity: error
- rule: Inside the figure-key `<legend>`, `<title>` contains the word "Key" and is followed by a `<def-list>`; each `<def-item>` inside the `<def-list>` contains a pair of `<term>` and `<def>`.
- check: `legend/title` is "Key"; `legend/def-list` exists (examples use `@list-content="figure"`); each `def-item` has `term` and `def`.

### 8.4 Unit statements in figures (p. 45)

- id: `iso-gdg-8.4-1`
- section: 8.4 Unit statements in figures
- severity: error
- rule: When a figure contains a unit statement such as "Dimensions in millimetres", it is coded as `<p>` with `@content-type="dimension"` inside the figure caption.
- check: `fig/caption/p[@content-type='dimension']` holds such statements.

## 9 Terms and definitions

### 9.1 Subclauses inside a "Terms and Definitions" clause (pp. 45–46)

- id: `iso-gdg-9.1-1`
- section: 9.1 Subclauses inside the Terms and Definitions clause
- severity: error
- rule: Subclauses of the terms and definitions clause (grouping clauses, abbreviations/symbols subclauses) are coded as `<sec>`; subclauses inside the clause must not be confused with terminological entries containing sub-entries (which are `term-sec`/TBX).
- check: Inside the `sec[@sec-type='terms']`, grouping subclauses are `sec`, terminological entries are `term-sec` containing `tbx:termEntry`.

### 9.2 Terminological entries in TBX

#### 9.2.1 Terms and definitions (p. 46)

- id: `iso-gdg-9.2.1-1`
- section: 9.2.1 Terminological entries in TBX
- severity: error
- rule: A terminological entry (`<tbx:termEntry>`) contains its core components inside `<tbx:langSet>`: terms and their descriptions (each term coded inside its own `<tbx:tig>`) and the definition (`<tbx:definition>`).
- check: Every `tbx:termEntry` has a `tbx:langSet` containing at least one `tbx:tig` with a `tbx:term`, and a `tbx:definition`.

#### 9.2.2 Definitions (p. 46)

- id: `iso-gdg-9.2.2-1`
- section: 9.2.2 Definitions
- severity: error
- rule: A definition is coded in `<tbx:definition>`, inside `<tbx:langSet>`; a `<break/>` can be used to insert a line break in a definition if necessary.
- check: `tbx:definition` occurs inside `tbx:langSet`.

#### 9.2.3 Terms and additional information on them (pp. 46–49)

- id: `iso-gdg-9.2.3-1`
- section: 9.2.3 Terms and additional information on them
- severity: error
- rule: Each term and its descriptive elements are contained in one individual `<tbx:tig>`; terms are coded inside `<tbx:term>`, which is mandatory.
- check: Every `tbx:tig` contains exactly one `tbx:term`.

- id: `iso-gdg-9.2.3-2`
- section: 9.2.3 Part of speech of a term
- severity: error
- rule: `<tbx:partOfSpeech>` has the values `none` (in which case the entire element is absent), `noun`, `verb`, `adj`, `adv`.
- check: `tbx:partOfSpeech/@value` (when present) is in {noun, verb, adj, adv}.

- id: `iso-gdg-9.2.3-3`
- section: 9.2.3 Form of the term (tbx:termType)
- severity: error
- rule: `<tbx:termType>` is optional and can have these values in the ISO/IEC context: `fullForm` (default value, can be omitted), `abbreviation`, `symbol`, `formula`.
- check: `tbx:termType/@value` (when present) is in {fullForm, abbreviation, symbol, formula}.

- id: `iso-gdg-9.2.3-4`
- section: 9.2.3 Term status (tbx:normativeAuthorization)
- severity: error
- rule: `<tbx:normativeAuthorization>` indicates the status of a term with values `preferredTerm` (recommended), `admittedTerm` (allowed), `deprecatedTerm` (for deprecated/obsolete/superseded terms etc.).
- check: `tbx:normativeAuthorization/@value` (when present) is in {preferredTerm, admittedTerm, deprecatedTerm}.

- id: `iso-gdg-9.2.3-5`
- section: 9.2.3 Grammatical number
- severity: warning
- rule: `<tbx:grammaticalNumber>` is optional and only used on nouns.
- check: `tbx:grammaticalNumber` occurs only in `tbx:tig` whose `tbx:partOfSpeech/@value` is `noun`.

#### 9.2.4 Examples in terminology (p. 49)

- id: `iso-gdg-9.2.4-1`
- section: 9.2.4 Examples in terminology
- severity: error
- rule: Examples in terminology are coded in `<tbx:example>`; the word "Example" and the number/label are removed from the content (both are added in the rendering process; one example is not numbered, more than one requires all of them to be numbered, restarting with every term entry).
- check: `tbx:example` content does not begin with the designation text "EXAMPLE"/"Example" (with or without number).

#### 9.2.5 Notes in terminology (pp. 49–50)

- id: `iso-gdg-9.2.5-1`
- section: 9.2.5 Notes in terminology
- severity: error
- rule: Terminological notes ("Note X to entry") are coded as `<tbx:note>`; the words "Note X to entry", including the number, are not included in the content and need to be added in the rendering process.
- check: `tbx:note` content does not contain the designation text "Note ... to entry" (with or without number).

#### 9.2.6 Cross-references to terms (pp. 50–51)

- id: `iso-gdg-9.2.6-1`
- section: 9.2.6 Cross-references from one terminological entry to another
- severity: error
- rule: Cross-references between terminological entries within the Terms and definitions clause are tagged as `<tbx:entailedTerm>` with the ID of the referenced entry in `@target`; this element is only used in child elements of `<tbx:termEntry>`.
- check: `tbx:entailedTerm` occurs only inside `tbx:termEntry` descendants, and its `@target` resolves to the ID of a terminological entry.

- id: `iso-gdg-9.2.6-2`
- section: 9.2.6 Cross-references from outside the terms and definitions section
- severity: error
- rule: References to terms from outside the terms and definitions section are coded in `<xref>` with `@ref-type="custom"` and `@custom-type="term-entry"`.
- check: `xref` pointing at a terminological entry carries `@ref-type='custom'` and `@custom-type='term-entry'`; its `@rid` resolves to a `term-sec`/`tbx:termEntry` ID.

#### 9.2.7 Cross-references to other sections from the terminology section (p. 51)

- id: `iso-gdg-9.2.7-1`
- section: 9.2.7 Cross-references to other sections of the document from the terminology section
- severity: error
- rule: References from the terms and definitions to other clauses, tables, figures etc. in the document previously used `<tbx:see>`; now `<xref>` is used.
- check: No `tbx:see` elements in OSD documents.

#### 9.2.8 Coding the source related to the terminological entry (p. 51)

- id: `iso-gdg-9.2.8-1`
- section: 9.2.8 Coding the source related to the terminological entry
- severity: error
- rule: If there is a stated source for an entry, it is included in `<tbx:source>` within `<tbx:langSet>`; square brackets and the word "SOURCE" are not included and have to be added during rendering.
- check: `tbx:source` occurs inside `tbx:langSet` and its content contains no "[SOURCE" designation text or square brackets.

#### 9.2.9 Subject fields of a terminological entry (p. 52)

- id: `iso-gdg-9.2.9-1`
- section: 9.2.9 Subject fields of a terminological entry
- severity: error
- rule: Subject fields related to a terminological entry are tagged with `<tbx:subjectField>`, within `<tbx:langSet>`; additional punctuation, such as brackets in the rendered example, has to be added during rendering.
- check: `tbx:subjectField` occurs inside `tbx:langSet`; content carries no added punctuation/brackets.

### 10.1 Document-internal references (pp. 52–55)

- id: `iso-gdg-10.1.1-1`
- section: 10.1.1 Cross-references
- severity: error
- rule: Document-internal cross-references are tagged as `<xref>` with `@ref-type` (type of target) and `@rid` (ID of the target); the possible `@ref-type` values are `abbreviation`, `app`, `bibr`, `custom` (with `@custom-type` `term-entry`, `note`, `example`), `disp-formula`, `fig`, `fn`, `sec`, `table`, `table-fn`.
- check: Every `xref` carries `@ref-type` from that enumeration (and `@custom-type` from {term-entry, note, example} when `ref-type='custom'`), plus `@rid`.

- id: `iso-gdg-10.1.2-1`
- section: 10.1.2 Cross-references to sections, Tables, Figures and Formulae
- severity: error
- rule: References to sections, tables, figures, and formulae in the document use the ID in the respective `<sec>`, `<table-wrap>`, `<fig>`, or `<disp-formula>` to populate `@rid`.
- check: `xref[@ref-type='sec']` targets `sec`; `table` targets `table-wrap`; `fig` targets `fig`; `disp-formula` targets `disp-formula`.

- id: `iso-gdg-10.1.3-1`
- section: 10.1.3 Cross-references to notes and examples
- severity: error
- rule: Cross-references to notes and examples are made inside `<xref>` with `@ref-type="custom"` and `@custom-type="note"` or `"example"`; the ID of the target element is in `@rid`.
- check: `xref[@custom-type='note']` targets `non-normative-note`; `xref[@custom-type='example']` targets `non-normative-example`.

- id: `iso-gdg-10.1.4-1`
- section: 10.1.4 Cross-references to abbreviations
- severity: error
- rule: Abbreviations in a list of abbreviations are coded in a `<def-list>` with `@list-content="abbreviation"`, each abbreviation in `<term>` and its definition in `<def>` inside `<def-item>`, which carries the ID of the term/def pair; occurrences in the text are linked via `<xref>` (ref-type `abbreviation`) to the respective `<def-item>`.
- check: `xref[@ref-type='abbreviation']` targets a `def-item` inside `def-list[@list-content='abbreviation']`.

- id: `iso-gdg-10.1.5-1`
- section: 10.1.5 Cross-references to list items
- severity: error
- rule: Only items in ordered lists can be referenced from elsewhere in the text; cross-references to list items are made inside `<xref>` with `@ref-type="list"`, the ID of the target in `@rid`.
- check: `xref[@ref-type='list']` targets a `list-item` inside an ordered `list` (alpha-lower/arabic/roman-lower).

- id: `iso-gdg-10.1.6-1`
- section: 10.1.6 Cross-references to items in the bibliography
- severity: error
- rule: References to items in the bibliography are coded with `<xref>` with `@ref-type="bibr"` and `@rid` containing the ID of the bibliographical entry; the label contains the entry number in square brackets (preceded by the standard reference when the entry is a standard); there is no specific markup for the document included in the cross-reference itself.
- check: `xref[@ref-type='bibr']` targets a `ref` in the bibl `ref-list`; the xref text is the bracketed label only (no nested document markup).

- id: `iso-gdg-10.1.7-1`
- section: 10.1.7 References to items in the normative references
- severity: error
- rule: Where items listed in the normative references section are mentioned in the text, they are marked up as `<std>` for standards and `<mixed-citation>` for other types of documents.
- check: In-text citations of normatively referenced documents use `std` (with `std-id`/`std-ref`) or `mixed-citation`.

- id: `iso-gdg-10.1.8-1`
- section: 10.1.8 Footnotes
- severity: error
- rule: References to footnotes are tagged as `<xref>` with `@ref-type="fn"` (styling such as superscripting is not included in the XML); the content of the footnote is tagged as `<fn>` and placed at the point of use in the text.
- check: `xref[@ref-type='fn']` targets an `fn`; footnote text occurs in `fn` at the point of use.

- id: `iso-gdg-10.1.9-1`
- section: 10.1.9 URL
- severity: error
- rule: A URL is coded using `<ext-link>` with `@ext-link-type="uri"`; `@xlink:href` contains the actual link.
- check: Every `ext-link` carries `@ext-link-type='uri'` and a resolvable `@xlink:href`.

### 10.2 References to other documents (p. 56)

- id: `iso-gdg-10.2-1`
- section: 10.2 References to other documents
- severity: error
- rule: References to other documents are listed in the Normative references section and the Bibliography; where they are cited in the text they appear in `<std>` (standards) or `<mixed-citation>` (other documents).
- check: In-text document citations use `std` (with `std-id[@std-id-link-type='urn']`) or `mixed-citation`.

- id: `iso-gdg-10.2.1-1`
- section: 10.2.1 Supplementary material
- severity: warning
- rule: IEC currently uses `<supplementary-material>` and `<inline-supplementary-material>` as described in Annex E; the use of these elements to reference external documents will be elaborated in future editions.
- check: Report these elements as IEC-specific; no further assertion (profile still evolving).

## Annex A — Multilingual contents, translations and adoptions

### A.1 / A.2 Definitions and governance (pp. 57–58)

- id: `iso-gdg-A.2-1`
- section: A.2 Rules of good governance
- severity: error
- rule: The governance rules for translations and adoptions are mandatory: any modifications of the original content need to be made clear — the status of the document (translated, adopted, modified or not) shall be mentioned.
- check: A derived document declares its status (root `adoption` for adoptions, translation language metadata) — combined with `iso-gdg-4.1-1`.

- id: `iso-gdg-A.2-2`
- section: A.2 Rules of good governance
- severity: warning
- rule: Changes should be indicated in the metadata, in the content in the place where the change has occurred, and in the tagging of the content.
- check: No direct assertion; generator must emit change markers (e.g. `added`/`deleted`/`changed` per Annex D) where content was modified.

### A.3 Structuring and tagging a document

#### A.3.1 Structure (p. 58)

- id: `iso-gdg-A.3.1-1`
- section: A.3.1 Structure
- severity: error
- rule: Organisations adopting an International Standard use the `<adoption>` element, and inside `<adoption>` the `<standard>` element contains the original or translated standard.
- check: `adoption/standard` structure holds; the adoption root carries the derived-version metadata.

- id: `iso-gdg-A.3.1-2`
- section: A.3.1 Structure
- severity: error
- rule: During adoptions, the metadata of the originating organisation are preserved within `<standard>` (`std-doc-meta` and `std-meta`); metadata of the originating organisation must not be modified.
- check: The inner `standard` of an adoption retains the originating organisation's `std-meta` (originator, copyright permissions) unchanged.

- id: `iso-gdg-A.3.1-3`
- section: A.3.1 Structure — metadata
- severity: error
- rule: When metadata of the adopting organisation are added, these should be contained in `<adoption-front>`.
- check: Adopting-organisation metadata occur in `adoption-front` (not mixed into the original `std-meta`).

- id: `iso-gdg-A.3.1-4`
- section: A.3.1 Structure — metadata
- severity: warning
- rule: `<processing-meta>` contains information about the table model, terminology model and MathML version; while NISO STS allows these to differ between the original standard and the `<adoption>`, it is recommended to keep them identical.
- check: `processing-meta` attribute values inside the adoption match those of the inner `standard`.

- id: `iso-gdg-A.3.1-5`
- section: A.3.1 Structure — metadata
- severity: error
- rule: Avoid `<iso-meta>`, `<reg-meta>` and `<nat-meta>` as they are outdated.
- check: No `iso-meta`, `reg-meta`, or `nat-meta` elements anywhere in the document.

- id: `iso-gdg-A.3.1-6`
- section: A.3.1 Structure — metadata (multilingual documents)
- severity: warning
- rule: For multilingual documents, `@xml:lang` should be used on the most outer block level element (e.g. it is sufficient to provide `@xml:lang="en"`/`"fr"` on the top level `<sec>` only).
- check: Language switches are declared at the highest block level containing the language run, not sprinkled on inner elements.

- id: `iso-gdg-A.3.1-7`
- section: A.3.1 Structure — elements and attributes
- severity: warning
- rule: Content element tags should be maintained whenever the content remains identical; attributes should be maintained unless they are directly related to language- or region-specific aspects (as in TBX terminology and IEV documents).
- check: No direct assertion (requires source comparison); generator must not drop or rename unchanged-content tags.

- id: `iso-gdg-A.3.1-8`
- section: A.3.1 Structure — IDs
- severity: error
- rule: Additional content requires new unique IDs; IDs are arbitrary and semantic IDs are no longer supported.
- check: All `@id` values within a document are unique.

- id: `iso-gdg-A.3.1-9`
- section: A.3.1 Structure — IDs
- severity: warning
- rule: For adoptions or translations of existing content it is recommended to maintain the original IDs as far as possible (identical, or with a prefix/suffix — always the same pattern).
- check: No direct assertion (requires source comparison); report id-pattern statistics per advisory tooling only.

#### A.3.2 Tagging that may need to be modified (pp. 59–60)

- id: `iso-gdg-A.3.2-1`
- section: A.3.2 Terminology
- severity: error
- rule: `<tbx:langSet>`'s `@xml:lang` needs to be adapted to the language of translation.
- check: Every `tbx:langSet` carries `@xml:lang` matching the language of its term content.

- id: `iso-gdg-A.3.2-2`
- section: A.3.2 Terminology
- severity: error
- rule: The `<label>` (not a TBX element; added in NISO STS to number terminological entries inside a standard) keeps the original numbering preserved in translation; terminological entries should not be ordered differently in the target language.
- check: `term-sec/label` values form an unbroken sequence in original order (translation must not reorder entries).

- id: `iso-gdg-A.3.2-3`
- section: A.3.2 Terminology
- severity: warning
- rule: Inside `tbx:termSec`, ISO and IEC provide terminology in NISO STS TBX (except some IEC legacy documents which use `termdisplay`); TBX sub-elements that may need adaptation during translation: `tbx:grammaticalNumber`, `tbx:geographicalUsage`, `tbx:grammaticalGender`, `tbx:example`, `tbx:partOfSpeech`, `tbx:pronunciation`, `tbx:source`.
- check: `termdisplay` reported as legacy IEC coding; language-sensitive TBX elements are reviewed per translation (no standalone assertion).

## Annex B — Legacy coding and traditional publication chains

Legacy-scoped rules apply to content converted from the traditional publication chains; where the constraint also holds for OSD output it is marked accordingly.

### B.2.1 Front matter (legacy) (p. 61)

- id: `iso-gdg-B.2.1-1`
- section: B.2.1 Front matter
- severity: error
- rule: Cover pages, tables of contents, page headers/footers, and page-number indexes are not captured in the XML (indexes, if coded, refer to marked-up elements, only in traditional-chain XML — OSD does not generate indexes).
- check: No `toc`/`index` with page-number references in `front`/`back`; index entries, where present, target marked-up elements (`see-entry` with rid), not page numbers.

- id: `iso-gdg-B.2.1-2`
- section: B.2.1 Front matter
- severity: error
- rule: Copyright notices listed in the footer of the PDF document are captured in the metadata section using `<permissions>`.
- check: Footer copyright text appears in `permissions`, not as body text (reinforces `iso-gdg-4.3.2-2`).

### B.2.2 / B.2.3 / B.2.5 (legacy) (pp. 62–63)

- id: `iso-gdg-B.2.2-1`
- section: B.2.2 Use of sec for custom subdivisions (legacy)
- severity: warning
- rule: Legacy documents with non-standard subdivisions (chapters, groupings) use `<sec>` for them.
- check: Report unlabeled groupings; OSD documents use the standard clause model instead.

- id: `iso-gdg-B.2.3-1`
- section: B.2.3 @content-type for indexes (legacy)
- severity: warning
- rule: `@content-type` in `<back>` can also be `index`.
- check: Accept `back/*[@content-type='index']` as a legacy value only.

- id: `iso-gdg-B.2.5-1`
- section: B.2.5 Numbered paragraphs (legacy)
- severity: warning
- rule: Legacy content may not have the attribute `@sec-type="numbered-paragraph"` on numbered paragraphs.
- check: Missing `sec-type` on title-less numbered `sec` reported as legacy tolerance, not an error, in legacy documents.

### B.2.4 Lists of references with designators (legacy) (pp. 62–63)

- id: `iso-gdg-B.2.4-1`
- section: B.2.4 Lists of references with designators (legacy)
- severity: warning
- rule: A reference in the normative reference section that is not a standard is coded as it appears (including punctuation and label) using `<mixed-citation>`; a recognizable designator such as "[1]" is coded as a `<label>` within the `<ref>`; any presentation formatting inside `<mixed-citation>` is captured as such (e.g. `<bold>`, `<italic>`).
- check: In legacy documents, `ref[label]/mixed-citation` allowed with inline formatting; designator text lives in `label`, not duplicated in the citation.

### B.2.6 Back matter (legacy) (pp. 63–66)

- id: `iso-gdg-B.2.6-1`
- section: B.2.6 Annex type coding
- severity: error
- rule: The annex type is not coded as text but derived from `@content-type` on rendering (IEC); the ISO traditional chain duplicates the information between `@content-type` and an explicit `<annex-type>` element; IEC legacy files may use `@content-type` values `inform` / `norm`.
- check: OSD documents have no literal `(informative)`/`(normative)` annex-type text in `app` (rule `iso-gdg-4.5.1-2`); `inform`/`norm` accepted only in IEC legacy documents.

- id: `iso-gdg-B.2.6-2`
- section: B.2.6 Multiple lists inside bibliography
- severity: error
- rule: Multiple lists inside the bibliography (numbering continued or restarted) are legacy tagging and deprecated; the `@id` for each reference needs to be unique, whatever system is used for the numbering of the reference label.
- check: No `ref-list` nested inside the bibl `ref-list`; all `ref/@id` values unique (also `iso-gdg-A.3.1-8`).

- id: `iso-gdg-B.2.6-3`
- section: B.2.6 Index
- severity: warning
- rule: The index is included in `<back>`, after the bibliography (in IEC legacy content, before any footnotes), coded within `<index>`; a legacy-conversion index lists only references to sections, as page numbers are no longer relevant in XML.
- check: `index` occurs in `back` after the bibl `ref-list`; index entries carry `see-entry` references to sections, not page numbers.

### B.2.7 Spaces, punctuation and formatting (legacy) (pp. 66–67)

- id: `iso-gdg-B.2.7-1`
- section: B.2.7 Spaces, punctuation and formatting
- severity: warning
- rule: Spaces, tabs and line breaks serving formatting purposes should be replaced or deleted in conversion unless significant (formulae, tables, example code); sequential spacing characters should be coded as a single space unless significant; text aligned into columns with spacing characters should instead be coded in a table or array.
- check: Text nodes contain no runs of multiple spaces/tabs outside `code`/`inline-code`/preformatted content; column layouts use `table`/`array`.

- id: `iso-gdg-B.2.7-2`
- section: B.2.7 Non-breaking spaces
- severity: warning
- rule: Non-breaking spaces (&#160;) are used in designated patterns, e.g. between a designation word and its number (Part, ISO, NOTE, Note … to entry, Table, Formula, SC, Figure, Clause, Volume, Article, Step, Annex …), between number and SI unit, digit and %, before an em-dash, between the digits of space-grouped numbers (1&#160;000), and between operands of dyadic expressions; certain expressions require no space (mathematical sign + unit, e.g. +3°C).
- check: Advisory regex scan for breaking spaces inside designation+number and number+unit runs.

- id: `iso-gdg-B.2.7-3`
- section: B.2.7 Punctuation and fonts
- severity: warning
- rule: All punctuation characters (except soft hyphens) are significant and preserved; non-standard fonts used for a semantic reason are preserved; small-caps text is coded `<sc>` (uppercase letters inside the tags are preserved).
- check: No soft-hyphen characters; `sc` used for small-caps runs.

### B.2.8 / B.2.9 Paragraph style and styled-content (legacy, redline) (p. 68)

- id: `iso-gdg-B.2.8-1`
- section: B.2.8 Style type in paragraphs (legacy)
- severity: warning
- rule: In legacy content, alignment may be defined with `@style-type` on `<p>`: `align-left`, `align-right`, `align-center`, `valign-top`, `valign-bottom`, `valign-middle`, `indent`; multiple values are separated by a semicolon.
- check: `p/@style-type` values (when present) come from that enumeration, semicolon-separated.

- id: `iso-gdg-B.2.9-1`
- section: B.2.9 Formatting text with styled-content
- severity: error
- rule: In legacy content and redline documents, when text styling conveys meaning this shall be done using `<styled-content>` rather than direct formatting (`<bold>`, `<italic>` etc.); redline additions/deletions use `@style-type` `addition`/`deletion` (ISO) or `@specific-use` `insert`/`delete` (IEC).
- check: Meaning-bearing styling uses `styled-content`; redline markup uses the organisation's attribute convention consistently (ISO documents: style-type addition/deletion; IEC documents: specific-use insert/delete).

- id: `iso-gdg-B.2.9-2`
- section: B.2.9 styled-content attributes
- severity: warning
- rule: Where `<styled-content>` is not admitted, `@specific-use` is used on its own (IEC redline deletions/insertions in `std-ref` and `ref`); `@style-type` is also used with the value `normal` for plain text within a string of differently styled text; `@style` is not currently used by ISO and IEC (maintained for potential future use; in legacy content explicit fonts use `@style` with CSS values).
- check: `styled-content/@specific-use` values follow the IEC insert/delete convention; `@style` reported as legacy-only.

### B.2.10 Notes and examples (legacy) (pp. 71–72)

- id: `iso-gdg-B.2.10-1`
- section: B.2.10 Notes and examples (legacy)
- severity: warning
- rule: In legacy content, notes and examples retained their formatting and punctuation: labels may carry trailing punctuation ("NOTE –"), a group of notes may be one `<non-normative-note>` labelled "NOTES" containing an ordered `list` with items labelled "1", "2", …, consecutive notes may be separate `<non-normative-note>` elements labelled "NOTE 1", "NOTE 2", and examples use label "EXAMPLE".
- check: Legacy label forms accepted ("NOTE –", "NOTES", "EXAMPLE"); OSD documents use the `iso-gdg-5.6-2` designation labels.

### B.2.11 Lists (legacy) (pp. 72–73)

- id: `iso-gdg-B.2.11-1`
- section: B.2.11 Lists (legacy)
- severity: warning
- rule: Legacy `@list-type` values exceed the OSD set: ISO legacy uses `simple`, `bullet`, `dash`, `alpha-lower`, `alpha-upper`, `roman-lower`, `roman-upper`, `order` (to be updated to `arabic`); IEC legacy adds `symbol` (discouraged), `order`, and `other` (non-sequential numbering).
- check: Outside the five OSD values (rule `iso-gdg-5.7-2`), the additional values are accepted only in legacy documents.

### B.2.12 / B.2.13 Code and boxed text (legacy) (p. 75)

- id: `iso-gdg-B.2.12-1`
- section: B.2.12 Code (legacy)
- severity: warning
- rule: `<preformat>` was used instead of `<code>` and will be changed to `<code>` in the future by both organizations; preformatted text with emphasis for syntax colouring, or an external link to a binary executable file, can be included in `<code>`.
- check: `preformat` reported as legacy coding to migrate to `code`.

- id: `iso-gdg-B.2.13-1`
- section: B.2.13 Boxed text
- severity: error
- rule: Boxed text is deprecated — `<boxed-text>` may exist in legacy content but will not be accommodated in the OSD; `<boxed-text>` is not used for content with labels such as "Warning / Important / …" — notes are used for those.
- check: No `boxed-text` in OSD documents; WARNING/IMPORTANT-labelled content is coded as notes.

### B.2.14 Tables (legacy) (pp. 75–76)

- id: `iso-gdg-B.2.14-1`
- section: B.2.14 Nested tables
- severity: warning
- rule: Nested tables may appear in legacy documents, but are deprecated.
- check: Nested `table` tolerated only in legacy documents (`iso-gdg-6.1-1` for OSD).

- id: `iso-gdg-B.2.14-2`
- section: B.2.14 Table width (legacy)
- severity: warning
- rule: (ISO legacy) the width of each column is captured as a percentage but the overall table width is set on `table/@width` in absolute number of pixels; (IEC legacy) column widths are percentages and no absolute pixel width is indicated for the table.
- check: Legacy tolerance for pixel `table/@width` on ISO-chain documents; OSD documents use the 33%/66%/100% values (`iso-gdg-6.1-2`).

- id: `iso-gdg-B.2.14-3`
- section: B.2.14 Table header row formatting (legacy)
- severity: warning
- rule: (ISO legacy) table header rows include `<bold>` formatting; (IEC) table headers are not tagged `<bold>` — they are bolded automatically during rendering, and non-bold text inside a table header is put inside `<roman>` tags to ensure plain formatting.
- check: Organisation-specific: `thead` content bolding follows the publishing organisation's convention; IEC headers use `roman` for non-bold runs and carry no `bold`.

- id: `iso-gdg-B.2.14-4`
- section: B.2.14 Table footnotes (legacy)
- severity: warning
- rule: (ISO legacy) table footnotes are coded using `<fn>` with `@id` prefixed with "table-fn" instead of "fn"; `@ref-type` has the value "table-fn".
- check: `xref[@ref-type='table-fn']` targets `fn` whose id follows the organisation's prefix convention.

- id: `iso-gdg-B.2.14-5`
- section: B.2.14 Table footnote ID format
- severity: warning
- rule: (ISO) table-footnote `@id` follows the format `table-fn_[sequence within the document]` for formal tables and `table-fn_[id of the informal table].[fn sequence within the table]` for informal tables (e.g. `table-fn_2.1`); (IEC) `@ref-type` is "fn" and `@id` is `tfn-x-y` where x is the table number as coded in the label and y the sequential footnote number inside the table.
- check: Organisation-specific footnote id prefixes (ISO `table-fn_…`, IEC `tfn-x-y`).

- id: `iso-gdg-B.2.14-6`
- section: B.2.14 Table footnotes legacy element
- severity: warning
- rule: In legacy content, table footnotes were captured in `<tfoot>`; going forward `<table-wrap-foot>` is the preferred and used element.
- check: `tfoot` reported as legacy; `table-wrap-foot` used in OSD documents.

- id: `iso-gdg-B.2.14-7`
- section: B.2.14 Table frames
- severity: warning
- rule: Table frames are used when drawing borders, via the `@frame` attribute; IEC makes use of `@frame`, ISO does not currently use this attribute.
- check: `table/@frame` present indicates IEC-chain origin; not an error.

- id: `iso-gdg-B.2.14-8`
- section: B.2.14 Alignment of tables
- severity: warning
- rule: Alignment of tables on the page is not coded into the table; it is handled by the rendering mechanism.
- check: No page-alignment attributes expected on `table`/`table-wrap` (beyond `@orientation`).

- id: `iso-gdg-B.2.14-9`
- section: B.2.14 Vertical text rotation
- severity: warning
- rule: Vertical text rotation in a cell is coded using `@style` within `<td>` with the value "transform: rotate(-90deg)"; other forms of rotation (e.g. 45 degrees) are discouraged; IEC uses this value, ISO not currently.
- check: `td/@style` rotation values limited to `rotate(-90deg)`.

- id: `iso-gdg-B.2.14-10`
- section: B.2.14 Table cell alignment
- severity: warning
- rule: In XHTML the default alignment of table header data is "center"; `@align` is not used when header data are aligned center in the source, and is coded with a different value only when the alignment differs (independently of the alignment used for `<col>`).
- check: `th` without `@align` is centered; explicit `@align` on `th` signals a deviation from center.

### B.2.15 Formulae (legacy and ID conventions) (pp. 80–83)

- id: `iso-gdg-B.2.15-1`
- section: B.2.15 Formulae IDs
- severity: warning
- rule: For numbered formulae, the formula ID should match the label of the formula (ISO: `formula_1` for Formula (1); IEC: `for-1`); unnumbered formulae carry no ID on `<inline-formula>` (IDs may sit on the MathML element inside it); IEC codes unnumbered block formulae as `<disp-formula>` with ID structure `for-informal-X-Y` (X subclause number, Y sequential number in the subclause).
- check: Organisation-specific formula id patterns; `inline-formula` itself carries no id for unnumbered inline formulae (rule `iso-gdg-7.1-2`).

- id: `iso-gdg-B.2.15-2`
- section: B.2.15 Formula keys (legacy def-list form)
- severity: warning
- rule: Formula keys ("where X = Y") are coded as `<def-list>` with `@list-content="formula"` with the word "where" as the `<label>` (legacy IEC sometimes uses `<def-head>` instead); `<def-list>` only allows pairs of `<term>` and `<def>` — if there is more than one definition for a `<term>`, a regular table is used to code the key; ISO currently codes formula keys in `<array>` until the legend pattern is integrated into the ISO/CS chain.
- check: Legacy key forms (def-list/label, def-head, array-based keys) tolerated per chain; OSD documents use the `<legend>` pattern of `iso-gdg-7.3-2`.

- id: `iso-gdg-B.2.15-3`
- section: B.2.15 MathML
- severity: warning
- rule: Every `<mml:math>`, irrespective of whether it is contained in a `<disp-formula>` or an `<inline-formula>`, contains an `@id` prefixed "mml_m[number]" with [number] the sequential position of the `<mml:math>` element in the document; the ID corresponds to the name of a graphical representation of the formula (.png) delivered inside the asset folder as a rendering fallback.
- check: `mml:math` carries `@id` matching `mml_m\d+`; values are unique and sequentially consistent.

- id: `iso-gdg-B.2.15-4`
- section: B.2.15 Legacy inline-formula display
- severity: warning
- rule: Some legacy coding uses `<inline-formula>` with `@display="block"` on the inner `<mml:math>` for block-level display.
- check: `inline-formula/mml:math[@display='block']` reported as legacy.

### B.2.16 Figures and graphics (legacy/ID conventions) (pp. 83–84)

- id: `iso-gdg-B.2.16-1`
- section: B.2.16 Attributes of fig
- severity: warning
- rule: (ISO) `fig/@id` is `fig_X` where X is the figure number contained in the label, and `@fig-type` usually has the value "figure"; (IEC) `fig/@id` is `fig-X`.
- check: Organisation-specific figure id patterns.

- id: `iso-gdg-B.2.16-2`
- section: B.2.16 Graphics naming
- severity: warning
- rule: The name of the graphic file should match the ID of the figure, prefixed by "fig" (ISO `fig_1`; IEC `fig-1`); names of inline graphics and graphics not part of figures are prefixed by "img" (ISO convention `img_{standard number}(-part)_ed{edition}{image type and number}`, annex images denoted by "A" before the number, sequential numbering per type; IEC convention `img-X-Y` with X the PDF page number and Y the sequential image number on that page).
- check: Asset naming follows the organisation's convention; `fig`-prefixed names for figure graphics, `img`-prefixed for inline/non-figure graphics.

- id: `iso-gdg-B.2.16-3`
- section: B.2.16 Figure keys (organisation variants)
- severity: warning
- rule: (ISO) the figure key is coded in a `<table>` within `<table-wrap>` inside `<fig>` with `@content-type="fig-index"` and caption title "Key"; (IEC) the figure key is coded inside `<fig>` in a `<def-list>` with `@list-content="figure"` and the word "Key" as its designation (`<label>` in the example), each keyed element a `<def-item>` with `<term>` and `<def>`.
- check: Organisation-specific key containers (`fig-index` table-wrap vs `def-list[@list-content='figure']`); OSD pattern is `<legend>` (`iso-gdg-8.3-2`).

- id: `iso-gdg-B.2.16-4`
- section: B.2.16 Subfigures (organisation variants)
- severity: warning
- rule: (ISO) a sub-figure caption is coded in `<title>` within `<caption>` within the `<graphic>`, the rest of the caption as `<label>` within the `<graphic>` (excluding any trailing dash); (IEC) multiple graphics are separate `<graphic>` elements within `<fig>`, and a figure of multiple sub-figures each with their own caption is separate `<fig>` elements inside a group, each sub-figure with an `@id` based on its label.
- check: Organisation-specific sub-figure caption placement.

### B.2.17 Terms and definitions (legacy and organisation variants) (pp. 89–91)

- id: `iso-gdg-B.2.17-1`
- section: B.2.17 Usage of TBX vs term-display
- severity: warning
- rule: Both `<tbx:termEntry>` and `<term-display>` occur optionally inside the `<term-sec>` container; ISO uses TBX exclusively; IEC uses TBX wherever possible, and `<term-display>` in redline documents and certain series where layout is important.
- check: `term-display` indicates IEC redline/legacy content; ISO documents use TBX only.

- id: `iso-gdg-B.2.17-2`
- section: B.2.17 Part of speech (legacy default)
- severity: warning
- rule: In NISO STS v1.0 there was no "undefined" value, so legacy conversions used "noun" as the `partOfSpeech` default; this is not a reliable value and programming must not be based on it.
- check: `partOfSpeech='noun'` treated as unverified for legacy-converted entries; no rule logic may depend on it.

- id: `iso-gdg-B.2.17-3`
- section: B.2.17 Terminological entry IDs
- severity: warning
- rule: The ID of the terminological entry is derived from the entry number contained in `<label>` and used for both `<term-sec>` and `<tbx:termEntry>` (ISO prefixes: `term-sec` "sec_", `tbx:termEntry` "term_"; IEC prefixes: "con-", "te-", with an `@id` on `tbx:term` corresponding to the term itself).
- check: `term-sec/@id` and `tbx:termEntry/@id` share the entry-number base; prefixes follow the organisation convention.

- id: `iso-gdg-B.2.17-4`
- section: B.2.17 Source coding (organisation variants)
- severity: warning
- rule: ISO does not code `<std>` for the standards found inside `<tbx:source>`; IEC does code references inside `<tbx:source>`.
- check: Organisation-specific source content (`tbx:source/std` presence).

### B.2.18 Cross-references (legacy) (pp. 91–92)

- id: `iso-gdg-B.2.18-1`
- section: B.2.18 xref ref-type values (legacy)
- severity: warning
- rule: Legacy `@ref-type` values include `app`, `bibr`, `disp-formula`, `fig`, `fn`, `list`, `sec`, `table`, `table-fn`, and `other` (for `<abb>`, `<term-sec>`, `<tbx:term>`); `<tbx:see>` with `@target` containing the cross-referenced ID is used (legacy) for references from the terms and definitions to other clauses, tables, figures etc.
- check: `ref-type='other'` and `tbx:see` accepted as legacy only (`iso-gdg-9.2.6-2`, `iso-gdg-9.2.7-1` for OSD).

### B.2.19 Footnotes (legacy) (pp. 92ff)

- id: `iso-gdg-B.2.19-1`
- section: B.2.19 Footnotes
- severity: warning
- rule: Footnote references use `<xref>` with `@ref-type="fn"` and `@rid` referencing the `@id` of the footnote text (organisation-specific id conventions detailed in the legacy boxes).
- check: `xref[@ref-type='fn']/@rid` resolves to an `fn` (`iso-gdg-10.1.8-1` for the OSD rule).

- id: `iso-gdg-B.2.19-2`
- section: B.2.19 Footnote reference rendering (organisation variants)
- severity: warning
- rule: (ISO) footnote reference markers are alphanumeric characters (sometimes in parentheses) within `<label>`, tagged as `<sup>` in both the `xref` and the `fn`; (IEC) no `<sup>` is used — rendering of footnote references is left to the stylesheet based on `@ref-type="fn"`.
- check: Organisation-specific superscript conventions on footnote markers.

- id: `iso-gdg-B.2.19-3`
- section: B.2.19 Footnote id and placement
- severity: warning
- rule: `fn/@id` should use sequential numbering (order of the footnote inside the document); footnote text is placed at the point of use in the text (ISO and IEC); footnote references in the bibliography section are coded with `<xref>` and their footnote text added to the document footnotes; legacy tagging collects footnote texts inside `<fn-group>` in `<back>` as the last part of the document.
- check: `fn/@id` sequential; `fn` at point of use (OSD, `iso-gdg-10.1.8-1`); `fn-group` reported as legacy.

### B.2.20 References to external standards (legacy/organisation variants) (pp. 94–95)

- id: `iso-gdg-B.2.20-1`
- section: B.2.20 References to external standards
- severity: warning
- rule: (ISO) in-text citations of external standards use `<std-ref>` inside `<std>`; (IEC) they use `<std-id>` (with URN) inside `<std>`.
- check: Organisation-specific in-text citation composition.

- id: `iso-gdg-B.2.20-2`
- section: B.2.20 Reference to a section, figure etc. in an external standard
- severity: warning
- rule: References to a particular section or content element inside a standard: (ISO) the location text is appended after `<std-ref>` inside `<std>`; (IEC) the location is embedded in the `std-id` URN (`#sec-11`) and the `std-ref` display text.
- check: Organisation-specific external-section citation composition.

### B.2.21 URLs (legacy) (pp. 95–96)

- id: `iso-gdg-B.2.21-1`
- section: B.2.21 URLs
- severity: warning
- rule: A URL is (legacy) coded using `<uri>`; incomplete URLs (e.g. without "http://") are tagged with `<ext-link>`; `<ext-link>` is also used when display text hides the actual link (`@xlink:href` contains the actual link); web addresses in references use `<uri>` (legacy) and line breaks inside `<mixed-citation>` are coded with `<break/>`.
- check: `uri` reported as legacy (`ext-link` is the OSD element per `iso-gdg-10.1.9-1`); `ext-link` always carries `@xlink:href`.

### B.3 IEC-specific legacy coding (pp. 97–100)

- id: `iso-gdg-B.3.1-1`
- section: B.3.1 Footnotes (legacy)
- severity: warning
- rule: In legacy publications for both IEC and ISO, footnotes are coded as the last element inside the `<back>` element.
- check: `back`-trailing footnote collections reported as legacy (current instructions: 10.1.8).

- id: `iso-gdg-B.3.2-1`
- section: B.3.2 Editing instructions (deletions, additions)
- severity: warning
- rule: For content on how a given document amends another document (amendments, certain IEC series), `<editing-instruction>` is used (see also Annex D); older legacy tagging uses `<editing-instruction>` with `@content-type` values addition, replacement, deletion, modification — this attribute has been dropped in more recent conversion.
- check: `editing-instruction` reported as IEC-amendment/legacy coding; `@content-type` on it is older legacy.

- id: `iso-gdg-B.3.3-1`
- section: B.3.3 Using term-display instead of TBX
- severity: warning
- rule: `<term-display>` is used at IEC for the tagging of terminological entries whose elements are difficult or impossible to represent correctly in TBX, or for appearance-oriented entries; elements are tagged in display sequence.
- check: `term-display` reported as IEC-specific legacy alternative to TBX (`iso-gdg-B.2.17-1`).

### B.4 ISO-specific legacy coding (p. 100)

- id: `iso-gdg-B.4.1-1`
- section: B.4.1 General
- severity: warning
- rule: The ISO-specific legacy encodings captured in B.4 are outdated and no longer used; they are documented for informative purposes only.
- check: No B.4 constructs are generated for new documents.

- id: `iso-gdg-B.4.2-1`
- section: B.4.2 Copyright notes (legacy)
- severity: warning
- rule: The copyright note in the PDF footer is coded as detailed in the legacy boxes, with grouping based on the different lines used in the footer.
- check: Legacy copyright-note coding; current copyright capture is via `permissions` in metadata (`iso-gdg-4.3.2-2`).

- id: `iso-gdg-B.4.2-2`
- section: B.4.2 Copyright notes in translations
- severity: warning
- rule: For translated standards, there is no need to capture extra phrases such as "Official translation / Traducción oficial / Traduction officielle" before the organization copyright.
- check: Copyright statements carry no added translation-disclaimer phrases.

- id: `iso-gdg-B.4.3-1`
- section: B.4.3 Annexes without clear informative or normative status (legacy)
- severity: warning
- rule: For some legacy content, when there is no "(informative)"/"(normative)" line after the annex title, the bracketed disclaimer text is coded as `<styled-content style-type="normal">` inside the annex `<title>`.
- check: Legacy tolerance for disclaimer text inside annex titles; OSD annexes derive the type line from `@content-type` (`iso-gdg-4.5.1-2`).

- id: `iso-gdg-B.4.4-1`
- section: B.4.4 Punctuation in normative references (legacy)
- severity: warning
- rule: In legacy content, the comma between the standard designation and the title has been captured in the XML (after `</std-ref>` inside `<std>`).
- check: Legacy tolerance for captured punctuation; OSD captures none (`iso-gdg-4.4.2-6`).

### B.4.5 Content language (legacy ISO metadata) (pp. 102–103)

- id: `iso-gdg-B.4.5-1`
- section: B.4.5 Content language
- severity: warning
- rule: The `<content-language>` element describes the main language used in the XML file; for ISO standards documents its content should always be one of "en", "fr", "ru", "es", or "ar".
- check: `content-language` (when present) is in {en, fr, ru, es, ar} for ISO documents.

- id: `iso-gdg-B.4.5-2`
- section: B.4.5 Language element (legacy ISO)
- severity: warning
- rule: The legacy ISO `<language>` element (part of `doc-ident`) must be a single element per ISO standards document; for monolingual documents it matches `content-language`, and for multilingual documents it holds a comma-separated (no whitespace) list of language codes (e.g. "en,fr,de"); this usage has been replaced by a custom-meta item `multilang-ident` with a slash-separated `<meta-value>` (e.g. "en/fr/de").
- check: At most one legacy `language` element; multilingual identification via `custom-meta[meta-name='multilang-ident']`.

## Annex C — Metadata usage (pp. 104–106)

- id: `iso-gdg-C.1-1`
- section: C.1 ISO metadata
- severity: warning
- rule: In ISO legacy tagging, `<iso-meta>` contains ISO-specific metadata about the document; the ISO `std-meta` example shows the ISO profile: `title-wrap` per language with `@xml:lang`, `std-ident` (originator, doc-type, doc-number, part-number, edition, version), `content-language`, `std-ref` with dated/undated `@type`, `comm-ref`, `secretariat`, `ics`, `page-count`, `std-xref[@type='revisions']`, `permissions`, `self-uri`, and `custom-meta-group` (e.g. `price-ref-pages`, `generation-date`).
- check: `iso-meta` reported as legacy; ISO `std-meta` profile elements present as applicable.

- id: `iso-gdg-C.2-1`
- section: C.2 IEC metadata
- severity: warning
- rule: The IEC `std-meta` profile includes: `permissions` with `copyright-statement` (with inline logo graphic and `<br/>`) plus a `license` with `license-p`/`address`/`license-ref`, `proj-id`, `release-version`, `std-ident` with multiple `std-id` variants (originator-scoped, `std-id-link-type` of `id` and `urn`), `isbn`, `suppl-number`, `std-org`, `content-language`, `std-ref[@type='dated']`, `release-date[@date-type='published']`, `meta-date[@stability-dated]`, `comm-ref`, `ics`, `counts`, `self-uri`, `abstract`, and `custom-meta-group` (e.g. `price-code`).
- check: IEC `std-meta` profile elements present as applicable; no assertion beyond org-profile advisory.

- id: `iso-gdg-C.3-1`
- section: C.3 National metadata usage
- severity: warning
- rule: The NISO metadata model allows multiple instances of `<std-meta>`; this can be used for national metadata.
- check: Multiple `std-meta` elements in `front` are permitted — the validator must not flag them.

## Annex D — Amendments (pp. 107–109)

### D.1 IEC amendments

- id: `iso-gdg-D.1-1`
- section: D.1 IEC amendments
- severity: warning
- rule: IEC amendments are generally coded as a regular IEC standard would, with semantic tagging wherever possible; where amendment-specific editing constraints prevent this, a layout-based option will be used.
- check: Advisory; prefer semantic tagging in amendment documents.

- id: `iso-gdg-D.1.1-1`
- section: D.1.1 Editing instructions
- severity: error
- rule: Amendment instructions such as "Insert the following text" or "Delete …" are coded inside `<editing-instruction>` (the instruction text itself as italic `p`); `<editing-instruction>` may carry `@content-type` such as "replacement".
- check: In amendment documents, amendment instructions appear in `editing-instruction` elements; `@content-type` values from {addition, replacement, deletion, modification} where present.

### D.2 ISO amendments (pp. 109–111)

- id: `iso-gdg-D.2-1`
- section: D.2 ISO amendments
- severity: warning
- rule: ISO produces amendment texts separate from the original document; sections in amendments without an identifiable label and title should provide at least an empty `<label/>` or `<title/>`.
- check: Every `sec` in an amendment document carries `label` or `title` (possibly empty).

- id: `iso-gdg-D.2-2`
- section: D.2 ISO amendments
- severity: warning
- rule: The XML captures the text of the amendment without semantic instruction for deletion or addition, and without direct reference to the original document.
- check: ISO amendment documents carry no `editing-instruction`/change-marking elements; instructions appear as plain paragraphs (e.g. italic change text).

- id: `iso-gdg-D.2-3`
- section: D.2 ISO amendments — terminology
- severity: warning
- rule: Terms and definitions in amendments are captured in TBX (amended `sec[@sec-type='terms']` contains `term-sec` with `tbx:termEntry`).
- check: Amendment terminology sections use `term-sec`/TBX (`term-display` is IEC-only, `iso-gdg-B.2.17-1`).

## Annex E — Corrigenda, ISH, software supplements (pp. 112–113)

- id: `iso-gdg-E.1-1`
- section: E.1 IEC Corrigenda
- severity: warning
- rule: When a corrigendum is published, its contents are integrated into the base publication; the XML of the base file is updated with these changes by IEC and delivered in the usual ways — there is no separate corrigendum XML markup.
- check: No standalone corrigendum document shape to validate; corrigenda surface as updated base XML.

- id: `iso-gdg-E.2-1`
- section: E.2 IEC Interpretation Sheets (ISH)
- severity: error
- rule: When an ISH is published, the PDF of the ISH is included in the assets and an `@xlink:href` to it is integrated in a `<supplementary-material>` element inside the paragraph in the foreword that mentions that an ISH has been included.
- check: `supplementary-material` referencing the ISH PDF asset occurs inside a `p` in the foreword `sec`.

- id: `iso-gdg-E.3-1`
- section: E.3 IEC Software supplements
- severity: error
- rule: IEC software supplements are indicated in the foreword; the additional files are contained in the asset folder, and in the `<p>` containing the announcement sentence a link to these files is created via `@xlink:href` inside `<supplementary-material>`.
- check: `p/supplementary-material[@xlink:href]` occurs in the foreword; the href points into the asset folder.

## Annex F — ID schemes of the traditional publication chain (pp. 114–116)

- id: `iso-gdg-F.1-1`
- section: F.1 IEC ID scheme
- severity: warning
- rule: The IEC semantic ID scheme (`sec-1`, `sec-foreword`, `anx-A`, `bib-1`, `con-3.2.1`, `te-3.2.1`, `ter-…`, `nte-…`, `tab-1`, `tab-informal-5.3-1`, `fig-1`, `for-1`, `for-informal-5.6-1`, `mml-1`, `foo-1`, `fos-1`, `tfn-1-1`, `frno-4-1`, `tno-4-1`, `lis-5.6-L1-2`, `not-3.5-1`, `p-450` …) is present in legacy content and the traditional chain; IDs generated in OSD are arbitrary.
- check: No enforcement; do not derive semantics from id patterns (see `iso-gdg-5.7.2-2`, `iso-gdg-A.3.1-9`).

- id: `iso-gdg-F.2-1`
- section: F.2 ISO ID scheme
- severity: warning
- rule: The ISO semantic ID scheme (`sec_1`, `sec_foreword`, `sec_intro`, `sec_bibl`, `sec_index`, `sec_A`, `ref_1`, `tab_1`, `tab_r`, `fig_1`, `formula_1`, `fn_1`, `table-fn_1.1` …; in ISO legacy, notes, examples, list items and paragraphs carry no ids) is present in legacy content and the traditional chain; it is not recommended to base any exploitation of ISO or IEC XML on semantic IDs.
- check: No enforcement; advisory only.

