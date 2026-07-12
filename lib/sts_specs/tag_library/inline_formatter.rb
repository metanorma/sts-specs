# frozen_string_literal: true

require "cgi"

module StsSpecs
  module TagLibrary
    # Converts Nokogiri inline-level nodes to an AsciiDoc inline string
    # (no embedded newlines). Stateless; safe to share across calls.
    #
    # Handles the inline patterns the Tag Library actually uses:
    #   <em>           → _text_
    #   <strong>, <b>  → *text*
    #   <code>         → `text`
    #   <span class="tt"> → `text`
    #   <span class="elementtag">&lt;foo&gt;</span> → `<foo>`
    #   <span class="elementname">Foo</span> → Foo
    #   <span class="attrtag">@foo</span> → @foo
    #   <a href="../element/foo.html">…</a> → <<element-foo,`<foo>`>>
    #   <a href="../attribute/bar.html">…</a> → <<attribute-bar,@bar>>
    #   <a href="../chapter/baz.html">Label</a> → <<chapter-baz,Label>>
    #   <a href="https://…">label</a> → link:https://…[label]
    #   <br>           → space
    class InlineFormatter
      ELEMENT_REF = %r{\A\.\./element/([^/]+)\.html\z}.freeze
      ATTRIBUTE_REF = %r{\A\.\./attribute/([^/]+)\.html\z}.freeze
      CHAPTER_REF = %r{\A\.\./chapter/([^/]+)\.html\z}.freeze

      def format(node)
        return "" if node.nil?
        return format_text(node) if node.text?

        return format_children(node) if node.fragment?

        case node.name
        when "text" then format_text(node)
        when "em", "i" then "_#{format_children(node)}_"
        when "strong", "b" then "*#{format_children(node)}*"
        when "code" then "`#{format_children(node)}`"
        when "span" then format_span(node)
        when "a" then format_anchor(node)
        when "br" then " "
        when "sup" then "^#{format_children(node)}^"
        when "sub" then "~#{format_children(node)}~"
        else
          format_children(node)
        end
      end

      private

      def format_children(node)
        node.children.map { |child| format(child) }.join
      end

      def format_text(node)
        decode(node.content)
      end

      def format_span(node)
        case node["class"]
        when "elementtag" then "`#{decode(node.text)}`"
        when "attrtag" then "`#{attr_prefixed(decode(node.text))}`"
        when "elementname", "name", "attrname" then decode(node.text)
        when "tt", "mono" then "`#{decode(node.text)}`"
        when "focus" then "*#{format_children(node)}*"
        when "linebrk" then " "
        else
          format_children(node)
        end
      end

      def attr_prefixed(text)
        text.start_with?("@") ? text : "@#{text}"
      end

      def format_anchor(node)
        href = node["href"].to_s
        label = format_children(node)

        if (m = href.match(ELEMENT_REF))
          "<<element-#{m[1]},#{label}>>"
        elsif (m = href.match(ATTRIBUTE_REF))
          "<<attribute-#{m[1]},#{label}>>"
        elsif (m = href.match(CHAPTER_REF))
          "<<chapter-#{m[1]},#{label}>>"
        elsif href.start_with?("http://", "https://", "mailto:")
          external_link(href, label)
        else
          label
        end
      end

      def external_link(href, label)
        return href if label.strip == href
        return href if label.strip.empty?

        "link:#{href}[#{label}]"
      end

      def decode(text)
        CGI.unescapeHTML(text)
      end
    end
  end
end
