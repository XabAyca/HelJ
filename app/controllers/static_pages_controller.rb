class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:resources]

  def index
  end

  def resources
  end

  def good_project
  end
end
