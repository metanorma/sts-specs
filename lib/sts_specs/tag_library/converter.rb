# frozen_string_literal: true

require "fileutils"
require "pathname"

module StsSpecs
  module TagLibrary
    # Orchestrates the full conversion: walks the source tree via {PageIndex},
    # parses each Page through {PageParser}, renders each through
    # {AdocEmitter}, writes one `.adoc` per section under `sections/`, copies
    # every referenced image into `images/`, then writes the top-level
    # `document.adoc` that wires them in document order.
    class Converter
      DEFAULT_DOCUMENT_SLUG = "niso-sts-tag-library-1-2".freeze
      IMAGE_GLOB = "**/*.{png,jpg,jpeg,gif,svg}".freeze

      attr_reader :source_root, :destination_root, :page_index, :parser, :emitter

      def initialize(source_root:, destination_root:,
                     page_index: PageIndex.new(source_root:),
                     parser: PageParser.new,
                     emitter: AdocEmitter.new)
        @source_root = Pathname.new(source_root)
        @destination_root = Pathname.new(destination_root)
        @page_index = page_index
        @parser = parser
        @emitter = emitter
      end

      def call
        ensure_directories!
        parsed_pages.each do |parsed|
          write_section(parsed)
        end
        copy_images
        write_document
        report
      end

      def dry_run
        parsed_pages.map do |parsed|
          "  #{parsed.anchor_id.ljust(40)} -> sections/#{parsed.section_filename}"
        end.join("\n")
      end

      private

      def ensure_directories!
        FileUtils.mkdir_p(sections_dir)
        FileUtils.mkdir_p(images_dir)
      end

      def parsed_pages
        @parsed_pages ||= page_index.all.map { |page| parser.call(page) }
      end

      def write_section(parsed)
        path = sections_dir.join(parsed.section_filename)
        path.write(emitter.call(parsed))
      end

      def copy_images
        source_root.glob(IMAGE_GLOB).each do |src|
          dst = images_dir.join(src.basename)
          FileUtils.cp(src, dst) unless dst.exist?
        end
      end

      def write_document
        document_path.write(document_body)
      end

      def document_body
        includes = parsed_pages.map do |parsed|
          "include::sections/#{parsed.section_filename}[]"
        end
        header + "\n" + includes.join("\n") + "\n"
      end

      def header
        <<~ADOC
          = NISO STS 1.2 Tag Library — Components Including TBX-TML
          :docidentifier: ANSI/NISO Z39.102-2022
          :docnumber: Z39.102
          :edition: 2022
          :publisher: NISO
          :language: en
          :doctype: report
          :mn-document-class: iso
          :toclevels-pdf: 2
          :imagesdir: images
          :local-cache-only:

          // One include per Tag Library page, in canonical document order.
          // Sections are generated from reference-docs/NISO-STS-TL-1-2-html/ —
          // do not edit by hand without updating scripts/extract-tag-library.
        ADOC
      end

      def document_path
        destination_root.join("document.adoc")
      end

      def sections_dir
        destination_root.join("sections")
      end

      def images_dir
        destination_root.join("images")
      end

      def report
        "Wrote #{parsed_pages.size} sections + #{images_dir.children.size} images to #{destination_root}"
      end
    end
  end
end
