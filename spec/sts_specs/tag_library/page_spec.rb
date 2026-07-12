# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::Page do
  let(:chapter_path) { FIXTURES_ROOT.join("tag_library/chapter/getting-started.html") }
  let(:element_path) { FIXTURES_ROOT.join("tag_library/element/abbrev.html") }

  describe ".from_path" do
    it "detects chapter type from the chapter/ directory" do
      page = described_class.from_path(chapter_path)
      expect(page.type).to eq(:chapter)
    end

    it "detects element type from the element/ directory" do
      page = described_class.from_path(element_path)
      expect(page.type).to eq(:element)
    end
  end

  describe "#slug" do
    it { expect(described_class.from_path(chapter_path).slug).to eq("getting-started") }
    it { expect(described_class.from_path(element_path).slug).to eq("abbrev") }
  end

  describe "#anchor_id" do
    it "prefixes the type" do
      expect(described_class.from_path(chapter_path).anchor_id).to eq("chapter-getting-started")
      expect(described_class.from_path(element_path).anchor_id).to eq("element-abbrev")
    end
  end

  describe "#document_filename" do
    it "is anchor_id.adoc" do
      expect(described_class.from_path(element_path).document_filename).to eq("element-abbrev.adoc")
    end
  end

  describe "#main_node" do
    it "returns the #text div from the HTML" do
      page = described_class.from_path(chapter_path)
      main = page.main_node
      expect(main["id"]).to eq("text")
    end
  end
end
