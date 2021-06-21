class MessagesController < ApplicationController
  def create
    p params
    @message = Message.create(content: params[:content], room_id: params[:room_id], user_id: current_user.id)
  end
end
