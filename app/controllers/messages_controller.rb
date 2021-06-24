class MessagesController < ApplicationController
  def create
    @message = Message.new(content: params[:content], room_id: params[:room_id], user_id: current_user.id)
    if @message.save
      ActionCable.server.broadcast "roomchannel#{@message.room_id}", html: render_message
    end
  end

  #couldn't use a job /cron job because of current_user wasn't passed in
  #instead i found this work-around
  # i handle the ajax call for creating a new message
  def render_message
    MessagesController.renderer.instance_variable_set(
      :@env, {
        "HTTP_HOST" => "https://hel-j.herokuapp.com/",
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
