# frozen_string_literal: true

require "zephyr_ruby"
require "thor"
require "nokogiri"
require_relative "zephyr_cli/version"
require_relative "zephyr_cli/test_cycles"
require_relative "zephyr_cli/test_plans"
require_relative "zephyr_cli/helpers/cli_helpers"

# CLI for creating test cycles and test plans in zephyr
class CLI < Thor
  @zephyr_client = ZephyrRuby::Client.new(ENV["ZEPHYR_API_KEY"])

  desc "test_cycles", "Test cycles commands"
  subcommand "test_cycles", TestCycles

  desc "test_plans", "Test plans commands"
  subcommand "test_plans", TestPlans
end

CLI.start(ARGV)
