class GoatbombsController < ApplicationController

  def create
    @friend = Friend.find(params[:friend_id])
    GoatBomb.send_text(@friend)
    redirect_to '/'
  end

end
