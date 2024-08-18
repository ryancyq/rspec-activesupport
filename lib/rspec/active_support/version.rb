# frozen_string_literal: true

module RSpec
  module ActiveSupport
    def self.version
      VERSION::STRING
    end

    def self.gem_version
      Gem::Version.new(VERSION::STRING)
    end

    module VERSION
      MAJOR = 0
      MINOR = 1
      BUILD = 2
      PRE   = nil

      STRING = [MAJOR, MINOR, BUILD, PRE].compact.join(".")
    end
  end
end
