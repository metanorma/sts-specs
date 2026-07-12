# frozen_string_literal: true

require "pathname"

module StsSpecs
  module TagLibrary
    # Immutable value object produced by parsing one Page.
    ParsedPage = Struct.new(
      :anchor_id,
      :title,
      :body_adoc,
      :source_path,
      keyword_init: true
    ) do
      def section_filename
        "#{anchor_id}.adoc"
      end
    end
  end
end
