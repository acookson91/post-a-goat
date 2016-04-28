require 'rails_helper'


describe 'GET /friends', type: :request do

  before do
    @sachin = User.create(email: "sachin@mail.com", username: "Sachin", password: "12345678")
    @sachin.friends.create(name: "Sachin", phone_number: "0123456789", user_id: 1)
  end



  it "get All request responds with JSON" do
    get '/friends'
    json = JSON.parse(response.body)
    expect(response).to be_success

    expect(json[0]["name"]).to eq("Sachin")
    expect(json[0]["phone_number"]).to eq("0123456789")
  end

  it "post action creates a friend" do
    params = {name: "Barry", phone_number: "0123456459", user_id: current_user.id}

    post '/friends' => "friends#create", friend: params
    expect(Friend.all).to eq(2)
  end











end
