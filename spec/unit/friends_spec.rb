require 'rails_helper'

describe 'GET /friends', type: :request do

  before do
    sachin = User.create(email: "sachin@mail.com", username: "Sachin", password: "12345678")
    sachin.friends.create(name: "Sachin", phone_number: "0123456789", user_id: 1)
  end

  it "get All request responds with JSON" do
    get '/friends'

    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(JSON['friends'].length).to eq(1)

  end









end
