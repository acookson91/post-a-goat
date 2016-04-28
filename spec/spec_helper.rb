require 'capybara/rspec'
require 'support/controller_helpers'
require 'devise'

RSpec.configure do |config|


  config.include Devise::TestHelpers, type: :controller
  config.include Devise::TestHelpers, type: :view
  config.include ControllerHelpers, :type => :controller

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # SmsSpec.driver = :"twilio-ruby"
end
