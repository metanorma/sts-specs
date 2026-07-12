# frozen_string_literal: true

module StsSpecs
  module TagLibrary
    # Parses element pages (`<h1 class="DL1 SL1 elem-info">`). A thin
    # specialization of {TemplatedPageParser} that wires the element-page
    # selectors.
    class ElementParser < TemplatedPageParser
      def initialize(block_formatter: BlockFormatter.new)
        super(
          block_formatter: block_formatter,
          head_selector: "h1.elem-info",
          tag_class: "elementtag",
          name_class: "elementname"
        )
      end
    end
  end
end
