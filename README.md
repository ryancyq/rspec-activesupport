# rspec-activesupport

[![Version][rubygems_badge]][rubygems]
[![CI][ci_badge]][ci_workflows]

`rspec-activesupport` provides ActiveSupport test assertions through [RSpec][rspec] matchers.

### Assertions Supported

- `ActiveSupport::Deprecation.warn`: RSpec expectation on deprecations being warned.

## Requirements

- Ruby: MRI 3.1+
- ActiveSupport: 5.0+
- RSpec-Expectations: 3.0+

## Installation

Add `rspec-activesupport` to both the `:development` and `:test` groups of your Gemfile:
```rb
group :development, :test do
  gem "rspec-activesupport", "~> 0.1"
end
```

Or execute the following command in bash:
```sh
bundle add rspec-activesupport --group development,test 
```

If Bundler is not being used to manage dependencies, install the gem by executing:
```sh
gem install rspec-activesupport
```

### Setup (Optional)

If you want to configure the entire RSpec suite with the same deprecator, add the following to `spec_helper.rb`, which is usually used to load RSpec configuration:
```rb
# /spec/spec_helper.rb
require "rspec/active_support"

RSpec.configure do |config|
  config.deprecator = MyGem.deprecator
end
```

### Usage

With that, you can start using the matchers provided by the gem.

```rb
describe "#deprecator" do
  let(:deprecate) { MyGem.deprecator.warn "my deprecation" }

  it "warn deprecation" do
    expect { deprecate }.to warn_deprecation(%r{my deprecation})
  end
end
```

Or you can pass the deprecator explicitly to the matcher:
```rb
describe "#deprecator" do
  let(:deprecate) { MyGem.deprecator.warn "my deprecation" }

  it "warn deprecation" do
    expect { deprecate }.to warn_deprecation(%r{my deprecation}, MyGem.deprecator)
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License
Please see [LICENSE](https://github.com/ryancyq/rspec-activesupport/blob/main/LICENSE) for licensing details.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/ryancyq/rspec-activesupport](https://github.com/ryancyq/rspec-activesupport).

[rubygems_badge]: https://img.shields.io/gem/v/rspec-activesupport.svg
[rubygems]: https://rubygems.org/gems/rspec-activesupport
[ci_badge]: https://github.com/ryancyq/rspec-activesupport/actions/workflows/build.yml/badge.svg
[ci_workflows]: https://github.com/ryancyq/rspec-activesupport/actions/workflows/build.yml
[rspec]: https://rspec.info/