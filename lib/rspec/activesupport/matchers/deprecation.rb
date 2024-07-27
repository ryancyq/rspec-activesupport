# frozen_string_literal: true

module Rspec
  module ActiveSupport
    module Matchers
      module Deprecation
        class HaveDeprecated < RSpec::Rails::Matchers::BaseMatcher
          def description
            "enqueues #{mailer_class_name}.#{@method_name}"
          end

          def matches?(block)
            return false if block.respond_to?(:call)

            raise ArgumentError,
                  "have_enqueued_mail and enqueue_mail only work with block arguments"
          end

          def failure_message
            return @failure_message if defined?(@failure_message)

            "expected to enqueue #{base_message}".tap do |msg|
              msg << "\n#{unmatching_mail_jobs_message}" if unmatching_mail_jobs.any?
            end
          end

          def failure_message_when_negated
            "expected not to enqueue #{base_message}"
          end
        end
      end

      def have_deprecated(message = nil, deprecator = nil)
        HaveDeprecated.new(message, deprecator)
      end
    end
  end
end
