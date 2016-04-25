require 'spec_helper'

describe TextController do
  include SmsSpec::Helpers
  describe "POST 'create'" do

    it "sends a text message to the phone number that registered" do
      post 'create', {:phone_number => '07498108082'}
      open_last_text_message_for "07498108082"
      current_text_message.should have_body ":goat:"
    end
  end
end
