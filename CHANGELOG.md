# Changelog

All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

---
## [Unreleased](https://github.com/ryancyq/rspec-activesupport/tree/HEAD)

### Build

- **(deps)** bump orhun/git-cliff-action from 3 to 4 - ([2e84eed](https://github.com/ryancyq/rspec-activesupport/commit/2e84eed3a9011a4bf26d0e85c43d0d7a5626da3f)) - dependabot[bot]

---
## [0.2.0](https://github.com/ryancyq/rspec-activesupport/compare/v0.1.2..v0.2.0) - 2024-10-03

### Documentation

- update spec_helper.rb file path - ([f37c6f7](https://github.com/ryancyq/rspec-activesupport/commit/f37c6f731d092f889e68168abbb0b32d8a79e5c2)) - Ryan Chang
- add codeclimate badge - ([b0b3f73](https://github.com/ryancyq/rspec-activesupport/commit/b0b3f731d821b15aabca32e703d2cc014a7822f2)) - Ryan Chang

### Build

- **(deps)** bump rspec-expectations from 3.13.1 to 3.13.3 - ([0e6721a](https://github.com/ryancyq/rspec-activesupport/commit/0e6721a4da0afd5f7d7be4e0d49515f0a0387304)) - dependabot[bot]
- **(deps)** bump activesupport from 7.2.0 to 7.2.1 - ([ea73c43](https://github.com/ryancyq/rspec-activesupport/commit/ea73c4322a1d3285be36ea1781602e7c4bf821b3)) - dependabot[bot]
- **(deps-dev)** bump rubocop from 1.65.1 to 1.66.0 - ([0f8e701](https://github.com/ryancyq/rspec-activesupport/commit/0f8e7015772d6056be67114bde212aebcde57a52)) - dependabot[bot]
- **(deps-dev)** bump rubocop from 1.66.0 to 1.66.1 - ([1edaec3](https://github.com/ryancyq/rspec-activesupport/commit/1edaec33ae071df9eb37dd0a0b79ebef465a6ff1)) - dependabot[bot]
- **(deps-dev)** bump rubocop-rspec from 3.0.4 to 3.1.0 - ([2494e9a](https://github.com/ryancyq/rspec-activesupport/commit/2494e9aa3788fd1b9e14dab31a4c1c6ef3101506)) - dependabot[bot]

### Lib

- relax to >= ruby 2.5, bump activesupport to >= 6.1 - ([84f1638](https://github.com/ryancyq/rspec-activesupport/commit/84f16381e8c5c95bf3936e2567a857fb995d38a6)) - Ryan Chang
- use ruby 2.5 syntax for instance type check - ([cea7322](https://github.com/ryancyq/rspec-activesupport/commit/cea73229a5d272df1e076a5f5fc31ba74d74b3b0)) - Ryan Chang
- use appraisal gem to generate Gemfile for different activesupport version - ([1d1f5c9](https://github.com/ryancyq/rspec-activesupport/commit/1d1f5c98901220d2af71bd21b8942026807d4465)) - Ryan Chang

---
## [0.1.2](https://github.com/ryancyq/rspec-activesupport/compare/v0.1.1..v0.1.2) - 2024-08-18

### Documentation

- update readme - ([2aefc0a](https://github.com/ryancyq/rspec-activesupport/commit/2aefc0ac20d1e66386c50ea3af86578f7867c146)) - Ryan Chang
- update readme with grammar corrections - ([7bcff26](https://github.com/ryancyq/rspec-activesupport/commit/7bcff264cef2ac7dd4ed525c3b237bf25d4d6ad4)) - Ryan Chang
- update readme with correct CI link - ([d05b81f](https://github.com/ryancyq/rspec-activesupport/commit/d05b81fe85043a091f39f07cb12c0fcd803bc38d)) - Ryan Chang

### Lib

- update gemspec description - ([9ce149d](https://github.com/ryancyq/rspec-activesupport/commit/9ce149d405f17803b2de5f05efe4a6a3c869159e)) - Ryan Chang

---
## [0.1.1] - 2024-08-18

### Bug Fixes

- gemspec require statement for version - ([be1fe96](https://github.com/ryancyq/rspec-activesupport/commit/be1fe96f2639412e2199fd70283c7cdfa67fb0ef)) - Ryan Chang
- rename have_deprecated to warn_depreacation - ([88e3736](https://github.com/ryancyq/rspec-activesupport/commit/88e37363c4060ff7aec84b408628356ba6a4ff3d)) - Ryan Chang

### Documentation

- update readme - ([40a8ec7](https://github.com/ryancyq/rspec-activesupport/commit/40a8ec7812384edc8feb52086060ca985dd1139c)) - Ryan Chang
- fix readme typo - ([2ef3ea2](https://github.com/ryancyq/rspec-activesupport/commit/2ef3ea239eb138be2b25d1721238d67dfaf2f981)) - Ryan Chang

### Tests

- add test cases for the RSpec matcher - ([adcde12](https://github.com/ryancyq/rspec-activesupport/commit/adcde122e2fee76bea50d305d5b9504b65f460f4)) - Ryan Chang

### Lib

- update gem file - ([0e6263f](https://github.com/ryancyq/rspec-activesupport/commit/0e6263f02d922ffd39039ea8ccb0bc1f579f73be)) - Ryan Chang
- update gemspec - ([90bd248](https://github.com/ryancyq/rspec-activesupport/commit/90bd248bdb8f5a4dfa7d4cc7a9d6acdf554d2bf6)) - Ryan Chang
- initialize lib and spec structure - ([e539cc7](https://github.com/ryancyq/rspec-activesupport/commit/e539cc7743028ad44447ee17625011aecf405c76)) - Ryan Chang
- ensure folder structure are following snake case for consistent require statements - ([146dd9a](https://github.com/ryancyq/rspec-activesupport/commit/146dd9a27ddf4aa35fa89d7f2c10c458f6ba33fc)) - Ryan Chang
- rename Rspec to RSpec - ([51780f0](https://github.com/ryancyq/rspec-activesupport/commit/51780f065a35358a01c16afd88a2b5478aefdc13)) - Ryan Chang
- use ruby 3.3.4 - ([cf54c61](https://github.com/ryancyq/rspec-activesupport/commit/cf54c6128fd58361fdd300e41a9f11e27f13b021)) - Ryan Chang
- update gemfile lock - ([e822fcb](https://github.com/ryancyq/rspec-activesupport/commit/e822fcb8c4088f44ec95c51e0746cbf631647f9a)) - Ryan Chang

<!-- generated by git-cliff -->
