# frozen_string_literal: true

require "nokogiri"
require "pathname"

module StsSpecs
  module TagLibrary
    # Value object representing one HTML page from the Tag Library tree.
    # Pure construction + derivation; no I/O.
    Page = Struct.new(
      :source_path,
      :type,
      keyword_init: true
    ) do
      DIRECTORY_TO_TYPE = {
        "chapter" => :chapter,
        "element" => :element,
        "attribute" => :attribute,
        "alpha-index" => :index,
        "context" => :context,
        "FullArticleSamples" => :sample
      }.freeze

      def self.from_path(path)
        path = Pathname.new(path)
        type = type_for(path)
        new(source_path: path, type: type)
      end

      def self.type_for(path)
        rel = path.expand_path.to_s
        DIRECTORY_TO_TYPE.each do |dir, sym|
          return sym if rel.include?("/#{dir}/")
        end
        :other
      end

      def slug
        source_path.basename(".*").to_s
      end

      def anchor_id
        "#{type}-#{slug}"
      end

      def document_filename
        "#{type}-#{slug}.adoc"
      end

      def read_html
        Nokogiri::HTML(source_path.read)
      end

      def main_node
        read_html.at_css("#text")
      end
    end
  end
end
