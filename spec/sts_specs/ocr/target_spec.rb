# frozen_string_literal: true

require "tempfile"

require "sts_specs"

RSpec.describe StsSpecs::Ocr::Target do
  let(:target) do
    described_class.new(
      pdf_path: "/tmp/example.pdf",
      canonical_url: "https://example.org/example.pdf",
      slug: "example"
    )
  end

  describe "#pdf_path" do
    it "returns a Pathname" do
      expect(target.pdf_path).to eq(Pathname.new("/tmp/example.pdf"))
    end
  end

  describe "#canonical_url and #slug" do
    it "returns the constructor values" do
      expect(target.canonical_url).to eq("https://example.org/example.pdf")
      expect(target.slug).to eq("example")
    end
  end

  describe "#basename" do
    it { expect(described_class.new(pdf_path: "/tmp/foo.pdf", canonical_url: "", slug: "x").basename).to eq("foo.pdf") }
  end

  describe "#exist?" do
    it "is true when the pdf file exists on disk" do
      Tempfile.create(["sts-specs-target-", ".pdf"]) do |f|
        f.write("dummy")
        target = described_class.new(pdf_path: f.path, canonical_url: "", slug: "x")
        expect(target).to be_exist
      end
    end

    it "is false when the pdf file is absent" do
      target = described_class.new(
        pdf_path: "/tmp/__definitely_not_here__.pdf",
        canonical_url: "",
        slug: "x"
      )
      expect(target).not_to be_exist
    end
  end

  describe "equality" do
    it "treats same-valued targets as equal" do
      a = described_class.new(pdf_path: "/x.pdf", canonical_url: "u", slug: "s")
      b = described_class.new(pdf_path: "/x.pdf", canonical_url: "u", slug: "s")
      expect(a).to eq(b)
    end
  end
end
