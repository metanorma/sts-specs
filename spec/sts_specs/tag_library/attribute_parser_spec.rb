# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::AttributeParser do
  let(:parser) { described_class.new }
  let(:page) do
    StsSpecs::TagLibrary::Page.from_path(FIXTURES_ROOT.join("tag_library/attribute/alt.html"))
  end

  it "is an :attribute page" do
    expect(page.type).to eq(:attribute)
  end

  it "composes the title from attrtag + attrname" do
    parsed = parser.call(page)
    expect(parsed.title).to eq("`@alt` Alternative Text")
  end

  it "uses the attribute- anchor prefix" do
    parsed = parser.call(page)
    expect(parsed.anchor_id).to eq("attribute-alt")
  end

  it "extracts the Definition paragraph" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("textual alternative for the element")
  end

  it "renders the Usage/Remarks section heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("Usage/Remarks")
  end

  it "skips the openclose chrome div" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).not_to include("◇")
  end

  it "does not duplicate the page title as a body heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).not_to match(/\A#+\s*@alt/)
  end
end
