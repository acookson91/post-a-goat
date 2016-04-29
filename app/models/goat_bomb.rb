require 'twilio-ruby'
require 'dotenv'
Dotenv.load

class GoatBomb

CLIENT = Twilio::REST::Client.new account_sid, auth_token

  def self.send_text(friend, client = CLIENT)
    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["AUTH_TOKEN"]
    client.account.messages.create(
      :from => '+441595922048',
      :to => friend.phone_number,
      :body => "#{friend.name} you have been goatbombed \u{1F410} maaaaaaa"
    )
  end

end
