# frozen_string_literal: true

require "fileutils"
require "tmpdir"
require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::Auditor do
  let(:sections_dir) { Pathname.new(Dir.mktmpdir("sts-specs-auditor-")) }
  let(:auditor) { described_class.new(sections_dir: sections_dir) }

  before do
    sections_dir.join("chapter-foo.adoc").write(<<~ADOC)
      [chapter-foo]
      === Foo

      See <<element-bar,bar>> and <<chapter-baz,baz>>.
    ADOC
    sections_dir.join("element-bar.adoc").write(<<~ADOC)
      [element-bar]
      === Bar

      No outgoing cross-refs here.
    ADOC
  end

  after { FileUtils.rm_rf(sections_dir) }

  describe "#defined_anchors" do
    it "collects every [anchor] line in the tree" do
      expect(auditor.defined_anchors).to contain_exactly("chapter-foo", "element-bar")
    end

    it "accepts slugs with underscores" do
      sections_dir.join("element-tbx-langSet.adoc").write(<<~ADOC)
        [element-tbx-langSet]
        === Language Set
      ADOC
      expect(auditor.defined_anchors).to include("element-tbx-langSet")
    end
  end

  describe "#orphan_cross_refs" do
    it "flags references whose anchor is not defined anywhere" do
      orphans = auditor.orphan_cross_refs
      anchors = orphans.map(&:anchor)
      expect(anchors).to include("chapter-baz")
      expect(anchors).not_to include("element-bar")
    end

    it "records the section file that contains the orphan" do
      orphans = auditor.orphan_cross_refs
      orphan = orphans.find { |f| f.anchor == "chapter-baz" }
      expect(orphan.section.basename.to_s).to eq("chapter-foo.adoc")
    end
  end
end
