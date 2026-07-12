# frozen_string_literal: true

require "nokogiri"

module StsSpecs
  module TagLibrary
    # Converts Nokogiri block-level nodes into an AsciiDoc body string.
    # Calls back to {InlineFormatter} for inline portions.
    #
    # Block patterns the Tag Library uses:
    #   <div class="para">…</div>            → paragraph
    #   <div class="codeblock"><pre>…</pre></div> → [source,xml] listing block
    #   <div class="section" id="…">…</div>  → sub-section (## heading)
    #   <ul class="bullist">…</ul>           → * unordered list
    #   <ol>…</ol>                           → . ordered list
    #   <details><summary>H</summary>…</details> → section + body
    #   <table>                              → AsciiDoc table
    class BlockFormatter
      attr_reader :inline

      def initialize(inline: InlineFormatter.new)
        @inline = inline
      end

      def format_children(node, indent: 0)
        node.children.map { |child| format_node(child, indent:) }.reject(&:empty?).join("\n")
      end

      def format_node(node, indent: 0)
        return "" if node.text? && node.content.strip.empty?
        return format_children(node, indent:) if node.fragment?

        case node.name
        when "text" then inline.format(node)
        when "div" then format_div(node, indent:)
        when "img" then format_image(node)
        when "details" then format_details(node, indent:)
        when "p" then paragraph(node, indent:)
        when "ul" then format_list(node, marker: "*", indent:)
        when "ol" then format_list(node, marker: ".", indent:)
        when "pre" then source_block(node)
        when "h1", "h2", "h3", "h4" then heading(node)
        when "table" then format_table(node)
        else
          inline.format(node)
        end
      end

      def format_image(node)
        src = node["src"].to_s
        return "" if src.empty?

        basename = src.sub(/\A.*\//, "")
        alt = node["alt"].to_s.sub(/\A.*\//, "")
        "image::images/#{basename}[#{alt}]"
      end

      private

      def format_div(node, indent:)
        cls = node["class"].to_s
        return "" if cls.include?("openclose")
        return "" if cls.include?("para") && openclose_only?(node)
        if cls.include?("para")
          paragraph(node, indent:)
        elsif cls.include?("codeblock")
          source_block(node.at_css("pre") || node)
        elsif cls.include?("section")
          format_section_div(node, indent:)
        elsif cls.include?("namedattrgroup")
          format_named_attr_group(node, indent:)
        elsif cls.include?("unaffiliatedattrlist")
          format_attr_list(node, indent:)
        else
          format_children(node, indent:)
        end
      end

      def openclose_only?(node)
        return false unless node.at_css(".openclose")
        node.element_children.all? { |c| c["class"].to_s.include?("openclose") }
      end

      def format_section_div(node, indent:)
        heading_node = node.at_css("h1, h2, h3, h4")
        body_nodes = node.children.reject { |c| c == heading_node }
        body = body_nodes.map { |n| format_node(n, indent:) }.reject(&:empty?).join("\n")
        "#{subheading_for(heading_node)}\n\n#{body}"
      end

      def format_named_attr_group(node, indent:)
        title_node = node.at_css("h1, h2, h3, h4")
        title = title_node ? inline.format(title_node) : "Attributes"
        attrs = node.css(".attrlistentry").map { |e| inline.format(e) }
        return "" if attrs.empty?

        "#{subheading_for(title_node, level: 4)}\n\n#{bullet_list(attrs)}"
      end

      def format_attr_list(node, indent:)
        attrs = node.css(".attrlistentry").map { |e| inline.format(e) }
        return "" if attrs.empty?

        bullet_list(attrs)
      end

      def format_details(node, indent:)
        summary = node.at_css("summary")
        body_nodes = node.children.reject { |c| c == summary }
        title = summary ? inline.format(summary) : ""
        body = body_nodes.map { |n| format_node(n, indent:) }.reject(&:empty?).join("\n")
        return body if title.strip.empty?

        "#{subheading_for_text(title, level: 4)}\n\n#{body}"
      end

      def paragraph(node, indent:)
        text = inline.format(node).strip
        return "" if text.empty?

        text.gsub(/\s+/, " ")
      end

      def format_list(node, marker:, indent:)
        items = node.element_children.select { |c| c.name == "li" }.map do |li|
          "#{marker} #{inline.format(li).strip}"
        end
        items.join("\n")
      end

      def source_block(node)
        text = node&.text&.to_s || ""
        cleaned = text.gsub(/\A\n+|\n+\z/, "")
        delims = ["....", "----"].find { |d| !cleaned.include?(d) } || "...."
        "[source,xml]\n#{delims}\n#{cleaned}\n#{delims}"
      end

      def heading(node)
        "#" * body_heading_level(node) + " #{inline.format(node).strip}"
      end

      def subheading_for(node, level: nil)
        return "" if node.nil?

        actual = level || body_heading_level(node)
        "#" * actual + " #{inline.format(node).strip}"
      end

      def subheading_for_text(text, level: 4)
        "#" * level + " #{text.strip}"
      end

      BODY_BASE_LEVEL = 4
      BODY_MAX_LEVEL = 6

      def body_heading_level(node)
        raw = { "h1" => 1, "h2" => 2, "h3" => 3, "h4" => 4, "h5" => 5 }.fetch(node&.name, 2)
        [BODY_BASE_LEVEL + (raw - 2), BODY_MAX_LEVEL].min
      end

      def bullet_list(items)
        items.map { |i| "* #{i.strip}" }.join("\n")
      end

      def format_table(node)
        rows = node.css("tr").map do |tr|
          tr.css("th, td").map { |cell| inline.format(cell).strip.gsub(/\|/, "\\|") }
        end
        return "" if rows.empty?

        header = rows.first
        body = rows.drop(1)
        rendered = ["|==="]
        rendered << header.map { |c| "| #{c}" }.join
        rendered << ""
        body.each { |row| rendered << row.map { |c| "| #{c}" }.join }
        rendered << "|==="
        rendered.join("\n")
      end
    end
  end
end
