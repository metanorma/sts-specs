# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::ElementParser do
  let(:parser) { described_class.new }
  let(:page) { StsSpecs::TagLibrary::Page.from_path(FIXTURES_ROOT.join("tag_library/element/abbrev.html")) }

  it "composes the title from elementtag + elementname" do
    parsed = parser.call(page)
    expect(parsed.title).to eq("`<abbrev>` Abbreviation or Acronym")
  end

  it "extracts the Definition paragraph" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("Abbreviation, acronym, or emoticon")
  end

  it "renders the Usage/Remarks section heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("Usage/Remarks")
  end

  it "renders the nested Linking subsection heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("Linking")
  end

  it "skips the openclose chrome div" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).not_to include("◇")
    expect(parsed.body_adoc).not_to include("◆")
  end

  it "does not duplicate the page title as a body heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).not_to match(/\A#+\s*<abbrev>/)
  end

  it "renders the Attributes list with attribute cross-refs" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("<<attribute-alt,`@alt`>>")
    expect(parsed.body_adoc).to include("<<attribute-content-type,`@content-type`>>")
  end

  it "renders Tagged Samples as a source block" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("[source,xml]")
    expect(parsed.body_adoc).to include("<abbrev>ckt</abbrev>")
  end
end
