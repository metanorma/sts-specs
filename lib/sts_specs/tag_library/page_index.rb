# frozen_string_literal: true

require "pathname"

module StsSpecs
  module TagLibrary
    # Walks the Tag Library HTML tree and yields Pages in canonical document
    # order: chapters (in the order index.html references them), then elements
    # (alphabetical by slug), then any other page types alphabetically.
    #
    # Pure traversal — does not modify the filesystem.
    class PageIndex
      CHAPTERS_GLOB = "chapter/*.html".freeze
      ELEMENTS_GLOB = "element/*.html".freeze
      ATTRIBUTES_GLOB = "attribute/*.html".freeze
      INDEX_FILE = "index.html".freeze

      attr_reader :source_root

      def initialize(source_root:)
        @source_root = Pathname.new(source_root)
      end

      def chapters
        ordered_chapters.sort_by { |page| nav_index[page.slug] || Float::INFINITY }
      end

      def elements
        source_root.glob(ELEMENTS_GLOB).sort_by(&:basename).map { |p| Page.from_path(p) }
      end

      def attributes
        source_root.glob(ATTRIBUTES_GLOB).sort_by(&:basename).map { |p| Page.from_path(p) }
      end

      def all
        chapters + elements + attributes
      end

      def each(&block)
        all.each(&block)
      end

      private

      def ordered_chapters
        source_root.glob(CHAPTERS_GLOB).map { |p| Page.from_path(p) }
      end

      def nav_index
        @nav_index ||= build_nav_index
      end

      def build_nav_index
        index_path = source_root.join(INDEX_FILE)
        return {} unless index_path.exist?

        index = 0
        index_path.read.scan(/href="\.?\/?\.?\/?chapter\/([^"]+)\.html"/).flatten.each_with_object({}) do |slug, h|
          h[slug] = (index += 1) unless h.key?(slug)
        end
      end
    end
  end
end
