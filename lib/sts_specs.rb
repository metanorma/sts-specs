# frozen_string_literal: true

# Namespace for conversion and authoring tooling shipped with the sts-specs
# repository. Sub-modules are autoloaded; do not require individual files
# from this library — `require "sts_specs"` is the only entry point.
#
# Sub-modules:
# - {StsSpecs::Ocr} — wraps the shared GLM OCR client with sts-specs-specific
#   targets and cache configuration.
# - {StsSpecs::TagLibrary} — HTML→AsciiDoc converter for the NISO STS Tag
#   Library reference tree.
#
# The Metanorma OIML → NISO STS transformer library lives in the
# `metanorma-oiml` gem (../metanorma-oiml/). See `Metanorma::Oiml::Sts`.
module StsSpecs
  autoload :Ocr, "sts_specs/ocr"
  autoload :TagLibrary, "sts_specs/tag_library"
end
