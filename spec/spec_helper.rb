# frozen_string_literal: true

require "pathname"

REPO_ROOT = Pathname.new(File.expand_path("..", __dir__))
$LOAD_PATH.unshift(REPO_ROOT.join("lib").to_s)

require "sts_specs"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.disable_monkey_patching!
  config.warnings = true
  config.default_formatter = "doc" if config.files_to_run.one?
  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end

FIXTURES_ROOT = REPO_ROOT.join("spec", "fixtures").freeze
REFERENCE_DOCS = REPO_ROOT.join("reference-docs").freeze
