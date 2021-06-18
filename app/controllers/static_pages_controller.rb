class StaticPagesController < ApplicationController
  def index
    id_challenge = 23
    id_user = 32
    ApplicationMailer.joint_the_project(id_user, id_challenge).deliver
  end
end
