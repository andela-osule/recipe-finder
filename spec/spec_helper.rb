require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end

# Capybara.javascript_driver = :poltergeist
Capybara.javascript_driver = :poltergeist