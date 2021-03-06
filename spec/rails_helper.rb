ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
require 'unit/unit_helper.rb'
require 'support/controller_helpers'
require 'devise'


ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|

  include Warden::Test::Helpers
  config.include Rails.application.routes.url_helpers

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

end
