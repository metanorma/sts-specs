# frozen_string_literal: true

module StsSpecs
  module TagLibrary
    # Parses attribute pages (`<h1 class="DL1 SL1 attr-info">`). A thin
    # specialization of {TemplatedPageParser} that wires the attribute-page
    # selectors.
    class AttributeParser < TemplatedPageParser
      def initialize(block_formatter: BlockFormatter.new)
        super(
          block_formatter: block_formatter,
          head_selector: "h1.attr-info",
          tag_class: "attrtag",
          name_class: "attrname"
        )
      end
    end
  end
end
