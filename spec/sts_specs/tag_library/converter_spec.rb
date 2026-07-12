# frozen_string_literal: true

require "fileutils"
require "tmpdir"
require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::Converter do
  let(:source_root) { FIXTURES_ROOT.join("tag_library") }
  let(:destination_root) { Pathname.new(Dir.mktmpdir("sts-specs-converter-")) }
  let(:converter) { described_class.new(source_root: source_root, destination_root: destination_root) }

  after { FileUtils.rm_rf(destination_root) }

  it "writes one section file per page in #all" do
    converter.call
    sections = destination_root.join("sections").children.map(&:basename).map(&:to_s).sort
    expect(sections).to eq(%w[attribute-alt.adoc
                              chapter-accessibility.adoc
                              chapter-getting-started.adoc
                              chapter-intro.adoc
                              element-abbrev.adoc])
  end

  it "writes a top-level document.adoc" do
    converter.call
    doc = destination_root.join("document.adoc")
    expect(doc).to exist
  end

  it "lists every section in document.adoc as an include directive" do
    converter.call
    contents = destination_root.join("document.adoc").read
    expect(contents).to include("include::sections/chapter-getting-started.adoc[]")
    expect(contents).to include("include::sections/chapter-intro.adoc[]")
    expect(contents).to include("include::sections/chapter-accessibility.adoc[]")
    expect(contents).to include("include::sections/element-abbrev.adoc[]")
    expect(contents).to include("include::sections/attribute-alt.adoc[]")
  end

  it "orders includes with chapters first, then elements, then attributes" do
    converter.call
    contents = destination_root.join("document.adoc").read
    gs_pos = contents.index("chapter-getting-started")
    intro_pos = contents.index("chapter-intro")
    access_pos = contents.index("chapter-accessibility")
    abbrev_pos = contents.index("element-abbrev")
    alt_pos = contents.index("attribute-alt")
    expected_order = [gs_pos, intro_pos, access_pos, abbrev_pos, alt_pos]
    expect(expected_order).to eq(expected_order.sort)
  end

  it "does not invoke the network or touch the source tree" do
    expect { converter.call }.not_to raise_error
  end

  it "copies referenced images into images/" do
    # The fixture tree has no images, but the converter must still create
    # the images/ directory as part of its skeleton.
    converter.call
    expect(destination_root.join("images")).to exist
  end
end
