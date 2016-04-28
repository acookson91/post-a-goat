class FriendsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  respond_to :json

  def index
    # added by the wonder twins
    # respond_with Friend.all

    # Simon
    # current_user ? @friends = current_user.friends : @friends = []
    @friends = Friend.all
    render :json => @friends
  end

  # SOS
  # def new
  #   @friend = Friend.new
  # end

  def create
    respond_with Friend.create(friend_params)
    # Simon
    # @friend = current_user.friends.create(friend_params)
    # redirect_to '/'
  end

  # SOS
  def show
    respond_with Friend.find(params[:id])
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :phone_number)
  end
end
