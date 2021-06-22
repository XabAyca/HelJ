class MessagesController < ApplicationController
  def create
    @message = Message.new(content: params[:content], room_id: params[:room_id], user_id: current_user.id)
    if @message.save
      redirect_to request.referrer
    end
  end
end
