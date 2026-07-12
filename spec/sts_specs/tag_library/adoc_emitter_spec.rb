# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::AdocEmitter do
  let(:emitter) { described_class.new }
  let(:parsed) do
    StsSpecs::TagLibrary::ParsedPage.new(
      anchor_id: "element-abbrev",
      title: "<abbrev> Abbreviation",
      body_adoc: "Body of the element.",
      source_path: Pathname.new("/tmp/element/abbrev.html")
    )
  end

  it "emits a level-3 heading" do
    expect(emitter.call(parsed)).to include("=== <abbrev> Abbreviation")
  end

  it "emits the anchor id as an AsciiDoc anchor" do
    expect(emitter.call(parsed)).to include("[element-abbrev]")
  end

  it "includes the body verbatim" do
    expect(emitter.call(parsed)).to include("Body of the element.")
  end
end
