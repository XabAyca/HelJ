class Admin::ChallengesController < ApplicationController
  before_action :is_admin?
  before_action :authenticate_user!
end