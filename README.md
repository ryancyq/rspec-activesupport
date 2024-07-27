# rspec-activesupport

[![CI][ci_badge]][ci_workflows]

`rspec-activesupport` surfaces active support test assertions through the [RSpec][] testing framework.

### Assertions Supported

- `ActiveSupport::Deprecation.warn`: allow rspec expection to assert on deprecations being warned

## Requirements

- Ruby: MRI 3.1+
- ActiveSupport: 5.0+
- RSpec-Expectations: 3.0+

## Installation

Install the gem and add to the application's Gemfile by executing:
```sh
bundle add mime_actor
```

If bundler is not being used to manage dependencies, install the gem by executing:
```sh
gem install mime_actor
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License
Please see [LICENSE](https://github.com/ryancyq/mime_actor/blob/main/LICENSE) for licensing details.

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/ryancyq/mime_actor](https://github.com/ryancyq/mime_actor).

[ci_badge]: https://github.com/ryancyq/rspec-activesupport/actions/workflows/build.yml/badge.svg
[ci_workflows]: https://github.com/ryancyq/rspec-activesupport/actions/workflows/