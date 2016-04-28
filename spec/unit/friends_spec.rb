require 'rails_helper'

describe FriendsController, "testing friends" do
  before(:each) do
    @sachin = User.create(email: "sachin@mail.com", username: "Sachin", password: "12345678")
    @sachin.friends.create(name: "Sachin", phone_number: "0123456789", user_id: 1)
    login_as @sachin
  end

  it "get All request responds with JSON", type: :request do
    get '/friends'
    json = JSON.parse(response.body)
    expect(response).to be_success

    expect(json[0]["name"]).to eq("Sachin")
    expect(json[0]["phone_number"]).to eq("0123456789")
  end

  it "post action creates a friend", type: :request do
    params = {name: "Barry", phone_number: "0123456459", user_id: @sachin.id}

    post '/friends.json', friend:params
    expect(@sachin.friends.length).to eq(2)
  end
end
