# frozen_string_literal: true

module StsSpecs
  module TagLibrary
    # Renders a {ParsedPage} into the final `.adoc` file content. Owns all
    # document-level formatting: anchor, heading, body, source attribution.
    #
    # Each section file gets a level-3 (`===`) heading so it sits inside a
    # parent level-2 chapter in the assembled Tag Library document.
    class AdocEmitter
      HEADING_LEVEL = 3

      def call(parsed_page)
        <<~ADOC
          // Generated from #{short_source(parsed_page)}; do not edit by hand without
          // also updating the conversion pipeline (scripts/extract-tag-library).

          [#{parsed_page.anchor_id}]
          #{"=" * HEADING_LEVEL} #{parsed_page.title}

          #{parsed_page.body_adoc}
        ADOC
      end

      private

      def short_source(parsed_page)
        return "" if parsed_page.source_path.nil?

        parsed_page.source_path.relative_path_from(repo_root).to_s
      rescue ArgumentError
        parsed_page.source_path.to_s
      end

      def repo_root
        Pathname.new(File.expand_path("../../../..", __dir__))
      end
    end
  end
end
