class Admin::StaticPagesController < ApplicationController
  before_action :is_admin?
  before_action :authenticate_user!

  def index 
  end
end
