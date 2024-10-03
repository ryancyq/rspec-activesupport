# frozen_string_literal: true

[
  "6.1.0",
  "7.0.0",
  "7.1.0",
  "7.2.0"
].each do |activesupport_version|
  appraise "activesupport-#{activesupport_version.chomp ".0"}" do
    gem "activesupport", "~> #{activesupport_version}"
  end
end

appraise "activesupport-edge" do
  gem "activesupport", github: "rails/rails", branch: "main"
end
