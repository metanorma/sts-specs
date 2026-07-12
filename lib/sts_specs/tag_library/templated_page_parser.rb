# frozen_string_literal: true

require "nokogiri"

module StsSpecs
  module TagLibrary
    # Shared parsing logic for Tag Library pages whose body follows the
    # "h1 title + body of div/details blocks" template — i.e. element pages,
    # attribute pages, and value pages. Subclasses configure the CSS selectors
    # that identify the title's tag/name spans.
    class TemplatedPageParser
      attr_reader :block_formatter, :head_selector, :tag_class, :name_class

      def initialize(block_formatter: BlockFormatter.new,
                     head_selector:, tag_class:, name_class:)
        @block_formatter = block_formatter
        @head_selector = head_selector
        @tag_class = tag_class
        @name_class = name_class
      end

      def call(page)
        main = page.main_node or return empty_parsed(page)

        ParsedPage.new(
          anchor_id: page.anchor_id,
          title: extract_title(main),
          body_adoc: extract_body(main),
          source_path: page.source_path
        )
      end

      private

      def extract_title(main)
        head = main.at_css(head_selector) || main.at_css("h1")
        return "" if head.nil?

        tag_text = format_first_span(head, ".#{tag_class}")
        name_text = text_first_span(head, ".#{name_class}")
        return head.text.strip if tag_text.empty? && name_text.empty?

        [tag_text, name_text].reject(&:empty?).join(" ")
      end

      def extract_body(main)
        children = main.element_children.reject { |node| skip_in_body?(node) }
        rendered = children.map { |node| block_formatter.format_node(node) }.reject(&:empty?)
        rendered.join("\n\n").strip
      end

      def skip_in_body?(node)
        return true if node.name == "h1"

        cls = node["class"].to_s
        cls.include?("openclose")
      end

      def format_first_span(scope, selector)
        node = scope.at_css(selector)
        return "" if node.nil?

        block_formatter.inline.format(node).strip
      end

      def text_first_span(scope, selector)
        node = scope.at_css(selector)
        return "" if node.nil?

        node.text.strip
      end

      def empty_parsed(page)
        ParsedPage.new(anchor_id: page.anchor_id, title: "", body_adoc: "", source_path: page.source_path)
      end
    end
  end
end
