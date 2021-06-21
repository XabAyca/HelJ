class MessagerieController < ApplicationController
  def index
    @rooms = User.find(current_user.id).rooms
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
