# frozen_string_literal: true

module StsSpecs
  module TagLibrary
    # Parses chapter pages. Chapters are prose with a single H1 title and
    # body paragraphs/sections; they don't share the element/attribute
    # template.
    class ChapterParser
      attr_reader :block_formatter

      def initialize(block_formatter: BlockFormatter.new)
        @block_formatter = block_formatter
      end

      def call(page)
        main = page.main_node or return empty_parsed(page)
        title = extract_title(main)
        body = extract_body(main)

        ParsedPage.new(
          anchor_id: page.anchor_id,
          title: title,
          body_adoc: body,
          source_path: page.source_path
        )
      end

      private

      def extract_title(main)
        main.at_css("h1.DL1")&.text&.strip ||
          main.at_css("h1")&.text&.strip ||
          ""
      end

      def extract_body(main)
        title_node = main.at_css("h1.DL1") || main.at_css("h1")
        body_root = title_node&.parent || main
        formatted = block_formatter.format_children(body_root).to_s.strip
        remove_leading_title(formatted, title_node)
      end

      def remove_leading_title(text, title_node)
        return text unless title_node

        title_text = title_node.text.strip
        text.sub(/\A#+\s*#{Regexp.escape(title_text)}[ \t]*\n?/, "")
      end

      def empty_parsed(page)
        ParsedPage.new(anchor_id: page.anchor_id, title: "", body_adoc: "", source_path: page.source_path)
      end
    end
  end
end
