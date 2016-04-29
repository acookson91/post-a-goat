class FriendsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]
  respond_to :json

  def index
    current_user ? @friends = current_user.friends : @friends = []
    render :json => @friends
  end

  def create
    respond_with current_user.friends.create(friend_params)
  end

  def show
    @friend = current_user.friends.find(params[:id])
    render :json => @friend
  end

  def destroy
    respond_with @friend = current_user.friends.find(params[:id])
    @friend.destroy
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :phone_number)
  end
end
