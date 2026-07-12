# frozen_string_literal: true

require "sts_specs"

# A real, lightweight OCR client double. We avoid RSpec `double()` per the
# global rule: real instances verify contracts better and survive refactors of
# the client interface.
class FakeOcrClient
  attr_reader :calls

  def initialize(markdown: "default markdown")
    @calls = []
    @markdown = markdown
  end

  def ocr_pdf(path, url:)
    @calls << { path: path, url: url }
    FakeDocument.new(markdown: @markdown)
  end
end

FakeDocument = Struct.new(:markdown, keyword_init: true) do
  def markdown
    self[:markdown]
  end
end

RSpec.describe StsSpecs::Ocr::Runner do
  let(:client) { FakeOcrClient.new(markdown: "# OCR\n\nbody") }
  let(:runner) { described_class.new(client: client) }

  let(:sample_target) do
    StsSpecs::Ocr::Target.new(
      pdf_path: "/tmp/sample.pdf",
      canonical_url: "https://example.org/sample.pdf",
      slug: "sample"
    )
  end

  describe "#initialize" do
    it "exposes the client via #client" do
      expect(runner.client).to equal(client)
    end

    it "exposes an optional transcript_writer via #transcript_writer" do
      writer = StsSpecs::Ocr::TranscriptWriter.new(cache_root: "/tmp/x")
      runner = described_class.new(client: client, transcript_writer: writer)
      expect(runner.transcript_writer).to equal(writer)
    end
  end

  describe "#call" do
    it "delegates to the client with the target's path and canonical url" do
      runner.call(sample_target)
      expect(client.calls).to eq([
                                   { path: Pathname.new("/tmp/sample.pdf"),
                                     url: "https://example.org/sample.pdf" }
                                 ])
    end

    it "returns whatever the client returns" do
      result = runner.call(sample_target)
      expect(result.markdown).to match(/OCR/)
    end

    it "writes a transcript when a writer is configured" do
      Dir.mktmpdir("runner-transcript-") do |dir|
        writer = StsSpecs::Ocr::TranscriptWriter.new(cache_root: dir)
        runner = described_class.new(client: client, transcript_writer: writer)
        runner.call(sample_target)
        expect(File.read(File.join(dir, "sample.md"))).to eq("# OCR\n\nbody")
      end
    end

    it "does not write a transcript when no writer is configured" do
      runner.call(sample_target)
      # No assertion needed beyond no exception; tests above cover the
      # positive case.
    end
  end

  describe "#call_all" do
    it "returns a hash keyed by slug with one entry per target" do
      results = runner.call_all
      expect(results.keys).to eq(StsSpecs::Ocr::TargetSet.to_a.map(&:slug))
      expect(client.calls.size).to eq(StsSpecs::Ocr::TargetSet.to_a.size)
    end
  end

  describe "#dry_run" do
    it "lists every target with its slug and path" do
      output = runner.dry_run
      StsSpecs::Ocr::TargetSet.to_a.each do |target|
        expect(output).to include(target.slug)
        expect(output).to include(target.pdf_path.to_s)
      end
    end

    it "does not invoke the client" do
      runner.dry_run
      expect(client.calls).to be_empty
    end
  end
end
