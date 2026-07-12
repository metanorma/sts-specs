# frozen_string_literal: true

require "sts_specs"

RSpec.describe StsSpecs::Ocr::TargetSet do
  describe ".to_a" do
    it "is frozen and stable across calls" do
      first = described_class.to_a
      second = described_class.to_a
      expect(first).to equal(second)
      expect(first).to be_frozen
    end

    it "lists every reference PDF exactly once" do
      slugs = described_class.to_a.map(&:slug)
      expect(slugs).to eq(slugs.uniq)
    end

    it "includes the high-priority source for ASO 1003:2026" do
      expect(described_class.to_a.map(&:slug))
        .to include("iso-sts-guidelines-coding-2-1")
    end
  end

  describe ".find" do
    it "returns the target with the given slug" do
      found = described_class.find("iso-sts-guidelines-coding-2-1")
      expect(found).to be_a(StsSpecs::Ocr::Target)
      expect(found.slug).to eq("iso-sts-guidelines-coding-2-1")
    end

    it "returns nil for an unknown slug" do
      expect(described_class.find("does-not-exist")).to be_nil
    end
  end

  describe ".each" do
    it "yields every target" do
      yielded = []
      described_class.each { |t| yielded << t.slug }
      expect(yielded).to eq(described_class.to_a.map(&:slug))
    end
  end

  describe "filesystem truth", :filesystem do
    it "every target points at an existing PDF under reference-docs/" do
      pending "reference PDFs not yet staged" unless REFERENCE_DOCS.exist?
      described_class.to_a.each do |target|
        expect(target.pdf_path.to_s).to start_with(REFERENCE_DOCS.to_s)
        expect(target).to be_exist, "missing PDF: #{target.pdf_path}"
      end
    end
  end
end
