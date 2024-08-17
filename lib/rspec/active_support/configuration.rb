# frozen_string_literal: true

require "active_support/deprecation"
require "rspec/active_support/matchers"

module RSpec
  module ActiveSupport
    module Configuration
      def self.initialize_config(config)
        config.add_setting :deprecator, default: ::ActiveSupport::Deprecation.new
        config.include RSpec::ActiveSupport::Matchers
      end

      initialize_config RSpec.configuration
    end
  end
end
