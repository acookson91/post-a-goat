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
    expect(@sachin.friends.last.name).to eq("Barry")
  end

  it "logs out users and no friends are availible", type: :request do
    logout
    get '/friends'
    json = JSON.parse(response.body)
    expect(json.empty?).to be true
  end

  it "deletes a friend from database", type: :request do
    delete "/friends/#{@sachin.friends.first.id}.json"
    expect(Friend.all.length).to eq(0)
  end

  it "can view specific friend profile", type: :request do
    get "/friends/#{@sachin.friends.first.id}"
    json = JSON.parse(response.body)
    expect(json["name"]).to eq("Sachin")
    expect(json["phone_number"]).to eq("0123456789")
  end
end
