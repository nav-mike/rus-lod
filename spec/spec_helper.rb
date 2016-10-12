require 'simplecov'
require 'capybara/rspec'
require 'rspec/json_expectations'
require 'faker'
SimpleCov.start 'rails'

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true
  # Use color not only in STDOUT but also in pagers and files
  config.tty = true
  # Use the specified formatter
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # use mocha
  config.mock_with :mocha
end
