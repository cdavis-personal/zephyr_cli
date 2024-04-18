# frozen_string_literal: true

require_relative "zephyr_cli/version"

module ZephyrCli
  class Error < StandardError; end

  class MyCLI < Thor
    desc "hello NAME", "say hello to NAME"
    def hello(name)
      puts "Hello #{name}"
    end
  end
end
