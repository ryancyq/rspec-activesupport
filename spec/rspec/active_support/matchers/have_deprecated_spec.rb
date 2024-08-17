# frozen_string_literal: true

require "rspec-activesupport"

RSpec.describe RSpec::ActiveSupport::Matchers::DeprecationMatcher do
  let(:deprecator) { ActiveSupport::Deprecation.new("1.0", "MyGem") }
  let(:deprecation_message) { "my deprecation" }
  let(:deprecate) { deprecator.warn(deprecation_message) }

  describe "#message" do
    let(:deprecator) { RSpec.configuration.deprecator }

    context "when message is String" do
      let(:full_message) { "DEPRECATION WARNING: my deprecation" }

      before do
        collected = [nil, [full_message]]
        allow_any_instance_of(described_class).to receive(:collect_deprecations).and_return(collected)
      end

      it "accepts exact match" do
        expect { deprecate }.to have_deprecated("DEPRECATION WARNING: my deprecation")
      end

      it "rejects partial match" do
        expect { deprecate }.not_to have_deprecated("my deprecation")
      end
    end

    context "when message is Regexp" do
      it "accepts exact match" do
        expect { deprecate }.to have_deprecated(%r{DEPRECATION WARNING: my deprecation})
      end

      it "accepts partial match" do
        expect { deprecate }.to have_deprecated(%r{y deprecation})
      end
    end
  end

  describe "#deprecator" do
    around do |example|
      old = RSpec.configuration.deprecator
      example.run
      RSpec.configuration.deprecator = old
    end

    context "when configured via RSpec config" do
      let(:deprecation_message) { "my configured deprecation" }

      before do
        RSpec.configuration.deprecator = deprecator
      end

      it "accepts" do
        expect { deprecate }.to have_deprecated(%r{my configured deprecation})
      end
    end

    context "when passed into matcher" do
      let(:deprecation_message) { "my passed deprecation" }

      it "accepts" do
        expect { deprecate }.to have_deprecated(%r{my passed deprecation}, deprecator)
      end
    end
  end
end
