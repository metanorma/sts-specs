# frozen_string_literal: true

require "nokogiri"
require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::InlineFormatter do
  let(:formatter) { described_class.new }

  def html(snippet)
    Nokogiri::HTML::DocumentFragment.parse(snippet)
  end

  def first_node(snippet)
    html(snippet).children.first
  end

  describe "emphasis" do
    it { expect(formatter.format(first_node("<em>italic</em>"))).to eq("_italic_") }
    it { expect(formatter.format(first_node("<strong>bold</strong>"))).to eq("*bold*") }
    it { expect(formatter.format(first_node("<code>monospace</code>"))).to eq("`monospace`") }
  end

  describe "NISO STS class spans" do
    it "wraps elementtag content in backticks" do
      expect(formatter.format(first_node('<span class="elementtag">&lt;abbrev&gt;</span>')))
        .to eq("`<abbrev>`")
    end

    it "prefixes attrtag with @ in backticks (no double-prefix)" do
      expect(formatter.format(first_node('<span class="attrtag">ref-type</span>')))
        .to eq("`@ref-type`")
      expect(formatter.format(first_node('<span class="attrtag">@already</span>')))
        .to eq("`@already`")
    end

    it "preserves elementname content" do
      expect(formatter.format(first_node('<span class="elementname">Abbreviation</span>')))
        .to eq("Abbreviation")
    end

    it "wraps tt content in backticks" do
      expect(formatter.format(first_node('<span class="tt">alt="x"</span>')))
        .to eq('`alt="x"`')
    end
  end

  describe "element cross-references" do
    it "rewrites element-page anchors to AsciiDoc cross-refs" do
      node = first_node('<a href="../element/foo.html"><span class="elementtag">&lt;foo&gt;</span></a>')
      expect(formatter.format(node)).to eq("<<element-foo,`<foo>`>>")
    end

    it "rewrites attribute-page anchors" do
      node = first_node('<a href="../attribute/bar.html"><span class="attrtag">bar</span></a>')
      expect(formatter.format(node)).to eq("<<attribute-bar,`@bar`>>")
    end

    it "rewrites chapter-page anchors" do
      node = first_node('<a href="../chapter/intro.html">Introduction</a>')
      expect(formatter.format(node)).to eq("<<chapter-intro,Introduction>>")
    end
  end

  describe "external links" do
    it "emits link: macro when label differs from URL" do
      node = first_node('<a href="https://example.org/page">page</a>')
      expect(formatter.format(node)).to eq("link:https://example.org/page[page]")
    end

    it "emits bare URL when label matches" do
      node = first_node('<a href="https://example.org">https://example.org</a>')
      expect(formatter.format(node)).to eq("https://example.org")
    end
  end

  describe "entity decoding" do
    it { expect(formatter.format(first_node("a&amp;b"))).to eq("a&b") }
    it { expect(formatter.format(first_node("&lt;p&gt;"))).to eq("<p>") }
  end
end
