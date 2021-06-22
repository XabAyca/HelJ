class Admin::ChallengesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(post_params)
    if @challenge.save
      @challenge.challenge_slug = "https://hel-j.herokuapp.com/challenge/#{@challenge.id}"
      flash[:success] = 'Challenge créé'
      redirect_to admin_challenges_path
    else
      flash[:error] = 'Challenge non créé'
      render 'new'
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy 
    flash[:success] = 'Challenge supprimé'
    redirect_to admin_challenges_path
  end

  private

  def post_params
    params.require(:challenge).permit(:c_ype, :level, :challenge_slug, :challenge_description, :challenge_img, :challenge_link, :challenge_name )
  end
end
