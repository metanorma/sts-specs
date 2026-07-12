# frozen_string_literal: true

require "fileutils"
require "pathname"

module StsSpecs
  module Ocr
    # Writes one `<slug>.md` file per OCR'd target alongside the SHA-named
    # cache files, so authors can read a single concatenated transcript per
    # document instead of having to recover page-order from the SHA-keyed
    # cache.
    #
    # The writer does not know how the document was chunked or how the cache
    # is keyed — it consumes a finished {Oiml::PubParse::Ocr::Document} (or any
    # object responding to `#markdown`) and serializes its markdown view.
    class TranscriptWriter
      attr_reader :cache_root

      def initialize(cache_root:)
        @cache_root = Pathname.new(cache_root)
      end

      def call(target, document)
        ensure_cache_root
        path_for(target).write(document.markdown)
        path_for(target)
      end

      def read(target)
        path = path_for(target)
        path.exist? ? path.read : nil
      end

      def exist?(target)
        path_for(target).exist?
      end

      private

      def ensure_cache_root
        FileUtils.mkdir_p(cache_root) unless cache_root.exist?
      end

      def path_for(target)
        cache_root.join("#{target.slug}.md")
      end
    end
  end
end
