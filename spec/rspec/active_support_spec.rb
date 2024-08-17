# frozen_string_literal: true

require "active_support/core_ext/string/inflections"
require "rspec-activesupport"

RSpec.describe RSpec::ActiveSupport do
  it "defines deprecator on RSpec.configuration" do
    expect(RSpec.configuration).to respond_to(:deprecator)
  end

  it "load matchers" do
    expect("RSpec::ActiveSupport::Matchers::DeprecationMatcher".safe_constantize).to be_a(Module)
  end
end
