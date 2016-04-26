
class FriendsController < ApplicationController

before_action :authenticate_user!, :except => [:index]
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def show
    @friend = Friend.find(params[:id])
    GoatBomb.send_text(@friend)
    redirect_to '/'
  end

  def create
    @friend = current_user.friends.create(friend_params)
    redirect_to '/'
  end

  def friend_params
    params.require(:friend).permit(:name, :phone_number)
  end
end
