# frozen_string_literal: true

# HTML→AsciiDoc converter for the NISO STS Tag Library reference tree.
#
# Architecture (MECE responsibilities):
# - {Page}: value object. Knows what file it came from and what type it is.
# - {PageIndex}: traversal. Iterates Pages in document order (chapters per
#   index.html nav, elements alphabetically).
# - {InlineFormatter}: Nokogiri inline nodes → AsciiDoc inline string.
# - {BlockFormatter}: Nokogiri block nodes → AsciiDoc block string. Calls
#   InlineFormatter for inline portions.
# - {ParsedPage}: value object produced by a parser.
# - {ChapterParser} / {ElementParser}: page-type-specific extractors that use
#   the formatters to build the parsed body.
# - {PageParser}: dispatches a Page to the right parser by type.
# - {AdocEmitter}: ParsedPage → final .adoc file content (header + anchor +
#   body).
# - {Converter}: orchestrates the whole pipeline and writes the output tree.
module StsSpecs::TagLibrary
  autoload :Page, "sts_specs/tag_library/page"
  autoload :PageIndex, "sts_specs/tag_library/page_index"
  autoload :ParsedPage, "sts_specs/tag_library/parsed_page"
  autoload :InlineFormatter, "sts_specs/tag_library/inline_formatter"
  autoload :BlockFormatter, "sts_specs/tag_library/block_formatter"
  autoload :TemplatedPageParser, "sts_specs/tag_library/templated_page_parser"
  autoload :ChapterParser, "sts_specs/tag_library/chapter_parser"
  autoload :ElementParser, "sts_specs/tag_library/element_parser"
  autoload :AttributeParser, "sts_specs/tag_library/attribute_parser"
  autoload :PageParser, "sts_specs/tag_library/page_parser"
  autoload :AdocEmitter, "sts_specs/tag_library/adoc_emitter"
  autoload :Converter, "sts_specs/tag_library/converter"
  autoload :Auditor, "sts_specs/tag_library/auditor"
end
