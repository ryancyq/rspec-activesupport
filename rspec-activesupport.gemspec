# frozen_string_literal: true

require_relative "lib/rspec/active_support/version"

Gem::Specification.new do |spec|
  spec.name = "rspec-activesupport"
  spec.version = RSpec::ActiveSupport.gem_version
  spec.authors = ["Ryan Chang"]
  spec.email = ["ryancyq@gmail.com"]

  spec.summary = "RSpec matcher for active support test helper "
  spec.description = ""
  spec.homepage = "https://github.com/ryancyq/rspec-activesupport"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata = {
    "rubygems_mfa_required" => "true",
    "allowed_push_host"     => "https://rubygems.org",
    "homepage_uri"          => spec.homepage,
    "source_code_uri"       => spec.homepage,
    "changelog_uri"         => "https://github.com/ryancyq/rspec-activesupport/blob/main/CHANGELOG.md"
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).select do |f|
      f.start_with?(*%w[lib/ sig/ CHANGELOG.md LICENSE.md])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5.0"
  spec.add_dependency "rake", ">= 11.0"
  spec.add_dependency "rspec-expectations", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
