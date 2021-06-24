class Admin::StaticPagesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @projects = Project.all
    @challenges = Challenge.all 
  end
end
