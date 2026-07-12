# frozen_string_literal: true

module StsSpecs
  module TagLibrary
    # Dispatches a Page to the right parser by type. Adding a new type means
    # adding one entry to {PARSERS} (Open/Closed at the dispatch level).
    class PageParser
      PARSERS = {
        chapter: ChapterParser,
        element: ElementParser,
        attribute: AttributeParser
      }.freeze

      def initialize(parser_overrides: {})
        @parsers = PARSERS.merge(parser_overrides)
      end

      def call(page)
        parser_for(page).new.call(page)
      end

      private

      attr_reader :parsers

      def parser_for(page)
        parsers[page.type] or raise ArgumentError, "no parser for type #{page.type.inspect}"
      end
    end
  end
end
