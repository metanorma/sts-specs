# frozen_string_literal: true

# OIML Metanorma presentation XML → OIML NISO STS XML converter.
#
# Architecture (mirrors `Metanorma::Iso::Sts::Transformer` from the
# `metanorma-iso` gem):
#
# - {SourceDocument}: parsed-input façade over the Metanorma presentation XML.
#   Exposes structured accessors (`bibdata`, `sections`, `annexes`,
#   `bibliography`) without exposing Nokogiri directly.
# - {Context}: shared state during one conversion run (id generator,
#   footnote collector, bibitem lookup).
# - {DocumentTransformer}: orchestrator. Produces the `<standard>` root.
# - {FrontTransformer}, {BodyTransformer}, {BackTransformer}: section-level
#   orchestrators for the three peer blocks.
# - Per-element transformers (`SectionTransformer`, `ParagraphTransformer`,
#   `InlineTransformer`, etc.) handle individual Metanorma elements.
# - {StsXml}: Nokogiri-backed output builder used by every transformer.
#   Keeps the rendering layer thin and uniform.
#
# Adding a new element = adding one transformer class and registering it
# with {BlockDispatcher} (Open/Closed at the dispatch level).
module StsSpecs::Converter
  autoload :SourceDocument, "sts_specs/converter/source_document"
  autoload :Context, "sts_specs/converter/context"
  autoload :StsXml, "sts_specs/converter/sts_xml"
  autoload :IdGenerator, "sts_specs/converter/id_generator"
  autoload :FootnoteCollector, "sts_specs/converter/footnote_collector"
  autoload :Base, "sts_specs/converter/base"
  autoload :DocumentTransformer, "sts_specs/converter/document_transformer"
  autoload :FrontTransformer, "sts_specs/converter/front_transformer"
  autoload :BodyTransformer, "sts_specs/converter/body_transformer"
  autoload :BackTransformer, "sts_specs/converter/back_transformer"
  autoload :SectionTransformer, "sts_specs/converter/section_transformer"
  autoload :ParagraphTransformer, "sts_specs/converter/paragraph_transformer"
  autoload :InlineTransformer, "sts_specs/converter/inline_transformer"
  autoload :ListTransformer, "sts_specs/converter/list_transformer"
  autoload :TableTransformer, "sts_specs/converter/table_transformer"
  autoload :FigureTransformer, "sts_specs/converter/figure_transformer"
  autoload :FormulaTransformer, "sts_specs/converter/formula_transformer"
  autoload :NoteTransformer, "sts_specs/converter/note_transformer"
  autoload :ReferenceTransformer, "sts_specs/converter/reference_transformer"
  autoload :BlockDispatcher, "sts_specs/converter/block_dispatcher"

  module_function

  # Convert a Metanorma presentation XML string to OIML NISO STS XML.
  # @param xml [String, Pathname] the source XML.
  # @return [String] the OIML NISO STS XML.
  def convert(xml)
    source = SourceDocument.parse(xml)
    context = Context.new(source)
    DocumentTransformer.new(context).transform_to_xml(source)
  end
end
