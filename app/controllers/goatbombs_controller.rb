class GoatbombsController < ApplicationController

  respond_to :json

  def create
    puts params
    respond_with @friend = Friend.find(params[:friend_id])
    GoatBomb.send_text(@friend)
  end

end
