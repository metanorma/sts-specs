# frozen_string_literal: true

require "nokogiri"
require "sts_specs"

RSpec.describe StsSpecs::TagLibrary::BlockFormatter do
  let(:formatter) { described_class.new }

  def frag(snippet)
    Nokogiri::HTML::DocumentFragment.parse(snippet)
  end

  describe "paragraph formatting" do
    it "renders a div.para as a plain paragraph" do
      node = frag('<div class="para">Hello <em>world</em>.</div>')
      expect(formatter.format_children(node)).to eq("Hello _world_.")
    end

    it "collapses embedded whitespace" do
      node = frag("<div class=\"para\">Line one.\n  Line two.\n</div>")
      expect(formatter.format_children(node)).to eq("Line one. Line two.")
    end
  end

  describe "code blocks" do
    it "wraps a codeblock pre as a source listing" do
      node = frag('<div class="codeblock"><pre>&lt;p&gt;hi&lt;/p&gt;</pre></div>')
      output = formatter.format_children(node)
      expect(output).to include("[source,xml]")
      expect(output).to include("<p>hi</p>")
    end
  end

  describe "lists" do
    it "renders an unordered bullet list" do
      node = frag('<ul class="bullist"><li>One</li><li>Two</li></ul>')
      expect(formatter.format_node(node)).to eq("* One\n* Two")
    end
  end

  describe "attribute lists" do
    it "renders an unaffiliatedattrlist as a bullet list of attr refs" do
      node = frag(<<~HTML)
        <div class="unaffiliatedattrlist">
          <div class="attrlistentry"><a href="../attribute/alt.html"><span class="attrtag">alt</span></a></div>
          <div class="attrlistentry"><a href="../attribute/id.html"><span class="attrtag">id</span></a></div>
        </div>
      HTML
      output = formatter.format_node(node)
      expect(output).to include("<<attribute-alt,`@alt`>>")
      expect(output).to include("<<attribute-id,`@id`>>")
      expect(output.split("\n").first).to start_with("* ")
    end
  end

  describe "section divs" do
    it "renders a section as a heading + body" do
      node = frag(<<~HTML)
        <div class="section" id="x">
          <h3>Linking</h3>
          <div class="para">Body text.</div>
        </div>
      HTML
      output = formatter.format_node(node)
      expect(output).to include("#### Linking")
      expect(output).to include("Body text.")
    end
  end

  describe "tables" do
    it "renders an HTML table as an AsciiDoc table" do
      node = frag(<<~HTML)
        <table>
          <tr><th>Element</th><th>Description</th></tr>
          <tr><td>p</td><td>Paragraph</td></tr>
        </table>
      HTML
      output = formatter.format_node(node)
      expect(output).to include("|===")
      expect(output).to include("| Element")
      expect(output).to include("| Paragraph")
    end
  end

  describe "images" do
    it "renders <img> as an AsciiDoc block image" do
      node = frag('<img src="../graphics/abstract.png" alt="abstract diagram">')
      output = formatter.format_node(node)
      expect(output).to eq("image::images/abstract.png[abstract diagram]")
    end

    it "uses the basename as alt when alt is missing or path-like" do
      node = frag('<img src="../graphics/foo.png" alt="../graphics/foo.png">')
      output = formatter.format_node(node)
      expect(output).to eq("image::images/foo.png[foo.png]")
    end
  end
end
