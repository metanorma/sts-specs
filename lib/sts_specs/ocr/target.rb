# frozen_string_literal: true

require "pathname"

module StsSpecs
  module Ocr
    Target = Struct.new(
      :pdf_path,
      :canonical_url,
      :slug,
      keyword_init: true
    ) do
      def pdf_path
        Pathname.new(self[:pdf_path])
      end

      def exist?
        pdf_path.exist?
      end

      def basename
        pdf_path.basename.to_s
      end

      def cache_slug
        slug
      end
    end
  end
end
