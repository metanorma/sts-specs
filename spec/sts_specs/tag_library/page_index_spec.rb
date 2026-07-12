# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::PageIndex do
  let(:source_root) { FIXTURES_ROOT.join("tag_library") }
  let(:index) { described_class.new(source_root: source_root) }

  describe "#chapters" do
    it "returns chapter pages in the order index.html references them" do
      slugs = index.chapters.map(&:slug)
      expect(slugs).to eq(%w[getting-started intro accessibility])
    end
  end

  describe "#elements" do
    it "returns element pages alphabetically by slug" do
      slugs = index.elements.map(&:slug)
      expect(slugs).to eq(%w[abbrev])
    end
  end

  describe "#attributes" do
    it "returns attribute pages alphabetically by slug" do
      slugs = index.attributes.map(&:slug)
      expect(slugs).to eq(%w[alt])
    end
  end

  describe "#all" do
    it "lists chapters, then elements, then attributes" do
      types_in_order = index.all.map(&:type)
      expect(types_in_order).to eq(%i[chapter chapter chapter element attribute])
    end
  end

  describe "#each" do
    it "yields every page in #all order" do
      anchored = []
      index.each { |p| anchored << p.anchor_id }
      expect(anchored.first).to eq("chapter-getting-started")
      expect(anchored.last).to eq("attribute-alt")
    end
  end
end
