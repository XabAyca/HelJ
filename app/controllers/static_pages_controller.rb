class StaticPagesController < ApplicationController
  def index
    ApplicationMailer.joint_the_project.deliver
  end
end
