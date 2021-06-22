class MessagerieController < ApplicationController
  def index
    if user_signed_in?
      @rooms = User.find(current_user.id).rooms
    else
      redirect_to root_path
    end
  end

  def show
    p params[:id]
    @rooms = User.find(current_user.id).rooms
    @room = Room.find(params[:id])
    render "index"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end
end
