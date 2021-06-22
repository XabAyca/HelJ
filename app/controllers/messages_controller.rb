class MessagesController < ApplicationController
  def create
    @message = Message.new(content: params[:content], room_id: params[:room_id], user_id: current_user.id)
    if @message.save
      ActionCable.server.broadcast "room_channel_#{@message.room_id}", html: render_message
    end
  end

  def render_message
    MessagesController.renderer.instance_variable_set(
      :@env, {
        "HTTP_HOST" => "localhost:3000",
        "HTTPS" => "off",
        "REQUEST_METHOD" => "GET",
        "SCRIPT_NAME" => "",
        "warden" => warden,
      }
    )

    MessagesController.render(
      partial: "messaging/message",
      locals: {
        message: @message,
      },
    )
  end
end
