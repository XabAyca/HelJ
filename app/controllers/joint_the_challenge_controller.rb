class JointTheChallengeController < ApplicationController
    
  def index
    @user = User.find(params['id_user'])
    @challenge = Challenge.find(params['id_challenge'])
    JointUsersToPpation.create(user_id: @user.id, participation_challenge_id: @challenge.id)
    redirect_to challenge_path(@challenge.id), notice: 'Vous êtes bien inscrit sur le challenge'
  end
end
