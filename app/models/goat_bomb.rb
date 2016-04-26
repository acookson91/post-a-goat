require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class GoatBomb

  def self.send_text(friend)
    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["AUTH_TOKEN"]
    client = Twilio::REST::Client.new account_sid, auth_token
    client.account.messages.create(
      :from => '+441595922048',
      :to => friend.phone_number,
      :body => "#{friend.name} you have been goatbombed :goat: maaaaaaa"
    )
  end

end
