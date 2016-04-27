
class FriendsController < ApplicationController

before_action :authenticate_user!, :except => [:index]
  def index
    current_user ? @friends = current_user.friends : @friends = []
  end

  def new
    @friend = Friend.new
  end


  def create
    @friend = current_user.friends.create(friend_params)
    redirect_to '/'
  end

  def friend_params
    params.require(:friend).permit(:name, :phone_number)
  end
end
