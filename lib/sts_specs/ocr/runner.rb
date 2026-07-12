# frozen_string_literal: true

require "pathname"

module StsSpecs
  module Ocr
    # Drives OCR for one or more {Target}s by delegating to a configured OCR
    # client. The client must respond to `ocr_pdf(path, url:)` (e.g. an instance
    # of `Oiml::PubParse::Ocr::Client`). Construction-time dependencies such as
    # the API key and cache directory belong to the client, not the Runner —
    # this keeps the Runner independent of any specific OCR implementation.
    class Runner
      attr_reader :client, :transcript_writer

      def initialize(client:, transcript_writer: nil)
        @client = client
        @transcript_writer = transcript_writer
      end

      def call(target)
        document = client.ocr_pdf(target.pdf_path, url: target.canonical_url)
        transcript_writer&.call(target, document)
        document
      end

      def call_all
        TargetSet.to_a.to_h do |target|
          [target.slug, call(target)]
        end
      end

      def dry_run
        TargetSet.to_a.map do |target|
          status = target.exist? ? "ok" : "MISSING"
          format("%-34s %-7s %s", target.slug, status, target.pdf_path)
        end.join("\n")
      end
    end
  end
end
