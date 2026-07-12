# frozen_string_literal: true

require "pathname"
require "set"

module StsSpecs
  module TagLibrary
    # Audits a generated section tree for issues:
    #
    # - {orphan_cross_refs}: `<<anchor,label>>` references whose anchor is not
    #   defined by any section. These render as broken links.
    #
    # Each finder returns an Array of {Finding} structs. Pure read over the
    # generated .adoc files; no I/O mutation.
    class Auditor
      Finding = Struct.new(:section, :anchor, :line, keyword_init: true)

      ANCHOR_DEF = /^\[(?<id>[a-zA-Z][a-zA-Z0-9_-]+)\]\s*$/.freeze
      XREF_USE = /<<(?<id>[a-zA-Z][a-zA-Z0-9_-]+)(?:,[^>]*)?>>/.freeze

      attr_reader :sections_dir

      def initialize(sections_dir:)
        @sections_dir = Pathname.new(sections_dir)
      end

      def defined_anchors
        each_section_line.each_with_object(Set.new) do |(path, _lineno, text), set|
          md = text.match(ANCHOR_DEF)
          set << md[:id] if md
          set
        end
      end

      def orphan_cross_refs
        anchors = defined_anchors
        findings = []
        each_section_line do |path, _lineno, text|
          text.scan(XREF_USE).each do |match|
            id = match.first
            findings << Finding.new(section: path, anchor: id, line: text) unless anchors.include?(id)
          end
        end
        findings
      end

      private

      def each_section_line
        return to_enum(__method__) unless block_given?

        sections_dir.glob("*.adoc").sort.each do |path|
          path.each_line.with_index(1) do |text, idx|
            yield path, idx, text
          end
        end
      end
    end
  end
end
