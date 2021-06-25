class JointUsersToPpationsController < ApplicationController
  def create
    @user = User.find(params["id_user"])
    @challenge = Challenge.find(params["id_challenge"])
    pc = ParticipationChallenge.create(challenge_id: @challenge.id)
    JointUsersToPpation.create(user_id: @user.id, participation_challenge_id: pc.id)
    redirect_to challenge_path(@challenge.id), notice: "Vous êtes bien inscrit sur le challenge"
  end

  def destroy 
    @user = current_user
    @challenge = Challenge.find(params["id_challenge"])
    participation=JointUsersToPpation.where(participation_challenge_id:params[:participation_id],user_id:@user.id)
    participation[0].delete
    redirect_to challenge_path(@challenge.id), notice: "Vous êtes bien désinscrit du challenge"
  end
end
