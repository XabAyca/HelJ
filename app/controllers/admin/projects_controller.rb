class Admin::ProjectsController < ApplicationController
  before_action :is_admin?
  before_action :authenticate_user!
end
