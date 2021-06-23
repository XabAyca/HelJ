class MessagingController < ApplicationController
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
<<<<<<< HEAD:app/controllers/messaging_controller.rb
    @room = Room.find(params[:id])
||||||| parent of d6b8d93 (messagerie not real time working):app/controllers/messagerie_controller.rb
	@room = Room.find(params[:id])
=======
    @room = Room.find(params[:id])
    p "i" * 30
    p @room
    p @room.messages
    p @room.messages[0]
    p @room.messages[0].content
>>>>>>> d6b8d93 (messagerie not real time working):app/controllers/messagerie_controller.rb
    render "index"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_room
    @room = Room.find(params[:id])
  end
end
