class ChallengesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end
end
