# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::ChapterParser do
  let(:parser) { described_class.new }
  let(:page) { StsSpecs::TagLibrary::Page.from_path(FIXTURES_ROOT.join("tag_library/chapter/getting-started.html")) }

  it "extracts the chapter title" do
    parsed = parser.call(page)
    expect(parsed.title).to eq("Getting Started")
  end

  it "uses the page anchor_id" do
    parsed = parser.call(page)
    expect(parsed.anchor_id).to eq("chapter-getting-started")
  end

  it "converts inline markup (em, strong) to AsciiDoc" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("_fixture_")
    expect(parsed.body_adoc).to include("*AsciiDoc*")
  end

  it "does not duplicate the page title as a body heading" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).not_to match(/\A#+\s*Getting Started/)
  end

  it "rewrites chapter cross-references" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("<<chapter-intro,Introduction>>")
  end

  it "emits a source block for codeblock content" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("[source,xml]")
  end

  it "rewrites element and attribute references in lists" do
    parsed = parser.call(page)
    expect(parsed.body_adoc).to include("<<element-foo,`<foo>`>>")
    expect(parsed.body_adoc).to include("<<attribute-bar,`@bar`>>")
  end
end
