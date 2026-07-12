# frozen_string_literal: true

require "fileutils"
require "tmpdir"
require "sts_specs"

RSpec.describe StsSpecs::Ocr::TranscriptWriter do
  let(:cache_root) { Pathname.new(Dir.mktmpdir("sts-specs-transcript-")) }
  let(:writer) { described_class.new(cache_root: cache_root) }
  let(:target) do
    StsSpecs::Ocr::Target.new(
      pdf_path: "/tmp/x.pdf",
      canonical_url: "https://example.org/x",
      slug: "fixture-slug"
    )
  end

  after { FileUtils.rm_rf(cache_root) }

  FakeDocument = Struct.new(:markdown, keyword_init: true) do
    def markdown
      self[:markdown]
    end
  end

  describe "#call" do
    it "writes <slug>.md in the cache root" do
      path = writer.call(target, FakeDocument.new(markdown: "# Hello\n"))
      expect(path).to eq(cache_root.join("fixture-slug.md"))
      expect(path.read).to eq("# Hello\n")
    end

    it "creates the cache root lazily if missing" do
      missing = cache_root.join("nested", "deeper")
      writer = described_class.new(cache_root: missing)
      writer.call(target, FakeDocument.new(markdown: "x"))
      expect(missing.join("fixture-slug.md")).to exist
    end
  end

  describe "#read" do
    it "returns the transcript content when present" do
      writer.call(target, FakeDocument.new(markdown: "body"))
      expect(writer.read(target)).to eq("body")
    end

    it "returns nil when the transcript is absent" do
      expect(writer.read(target)).to be_nil
    end
  end

  describe "#exist?" do
    it "is true after writing" do
      writer.call(target, FakeDocument.new(markdown: "x"))
      expect(writer).to exist(target)
    end

    it "is false before writing" do
      expect(writer).not_to exist(target)
    end
  end
end
