# frozen_string_literal: true

require "active_support/testing/deprecation"
require "rspec/matchers/composable"

module RSpec
  module ActiveSupport
    module Matchers
      class DeprecationMatcher
        include ::RSpec::Matchers::Composable
        include ::ActiveSupport::Testing::Deprecation

        attr_reader :expected, :deprecator, :deprecations

        def initialize(expected, deprecator)
          raise ArgumentError, "deprecator must be an instance, got: #{deprecator.inspect}" if deprecator.is_a?(Class)

          @expected = expected
          @deprecator = deprecator || RSpec.configuration.deprecator
        end

        def matches?(actual)
          raise ArgumentError, "warn_deprecation only work with block arguments" unless actual.is_a?(Proc)

          _, @deprecations = collect_deprecations(deprecator, &actual)
          return false if deprecations.empty?
          return false if expected && deprecations.none? { |msg| values_match?(expected, msg) }

          true
        end

        def failure_message
          if deprecations.nil? || deprecations.empty?
            "expected a deprecation warning within the block but received none"
          elsif expected
            "no deprecation warning matched #{expected.inspect}: #{deprecations.join(", ")}"
          end
        end

        def failure_message_when_negated
          return if deprecations.nil? || deprecations.empty?

          message = deprecations.map { |msg| "  #{msg}" }
          message.unshift("expected no deprecation warning within the block but received #{deprecations.size}:")
          message.join("\n")
        end

        def supports_value_expectations?
          false
        end

        # @api private
        def supports_block_expectations?
          true
        end
      end

      def warn_deprecation(message = nil, deprecator = nil)
        DeprecationMatcher.new(message, deprecator)
      end
    end
  end
end
