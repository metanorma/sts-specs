# frozen_string_literal: true

# GLM OCR integration for the sts-specs repository. Wraps the shared
# `Oiml::PubParse::Ocr::Client` from the sibling oimlsmart/publications project
# with a target manifest and a thin Runner.
#
# Autoload entries for the Ocr sub-namespace. New sub-modules are declared
# here, not required from below.
module StsSpecs::Ocr
  autoload :Target, "sts_specs/ocr/target"
  autoload :TargetSet, "sts_specs/ocr/target_set"
  autoload :Runner, "sts_specs/ocr/runner"
  autoload :TranscriptWriter, "sts_specs/ocr/transcript_writer"
end
