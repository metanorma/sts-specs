# frozen_string_literal: true

require "pathname"

module StsSpecs
  module Ocr
    # Single source of truth for the reference PDFs this repository OCRs.
    # Adding a new target = appending one entry to {TARGETS}; no other code
    # changes (Open/Closed).
    module TargetSet
      ROOT = Pathname.new(File.expand_path("../../..", __dir__)).freeze
      REFERENCE_DOCS = ROOT.join("reference-docs").freeze

      TARGETS = [
        Target.new(
          pdf_path: REFERENCE_DOCS.join("Guidelines for coding ed.2.1.pdf"),
          canonical_url: "https://www.iso.org/sites/sts/UserGuidelinesForCodingSTS.html",
          slug: "iso-sts-guidelines-coding-2-1"
        ),
        Target.new(
          pdf_path: REFERENCE_DOCS.join("Coding Changes ed 2.1.pdf"),
          canonical_url: "https://www.iso.org/sites/sts/STSChangesEd2-1.html",
          slug: "iso-sts-coding-changes-2-1"
        ),
        Target.new(
          pdf_path: REFERENCE_DOCS.join("NISO-STS-1-2-compare-1-0.pdf"),
          canonical_url: "https://www.niso.org/standards-committees/sts/NISO-STS-1-2-compare-1-0.pdf",
          slug: "niso-sts-1-2-compare-1-0"
        ),
        Target.new(
          pdf_path: REFERENCE_DOCS.join("NISOSTS-guidelines-v1.0.pdf"),
          canonical_url: "https://www.niso.org/standards-committees/sts/NISOSTS-guidelines-v1.0.pdf",
          slug: "niso-sts-guidelines-v1-0"
        ),
        Target.new(
          pdf_path: REFERENCE_DOCS.join("Z39.102-2022.pdf"),
          canonical_url: "https://www.niso.org/publications/ansiniso-z39102-2022",
          slug: "z39-102-2022"
        )
      ].freeze

      module_function

      def to_a
        TARGETS
      end

      def find(slug)
        TARGETS.find { |target| target.slug == slug }
      end

      def each(&block)
        TARGETS.each(&block)
      end
    end
  end
end
