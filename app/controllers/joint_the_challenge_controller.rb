class JointTheChallengeController < ApplicationController
  def index
    @user = User.find(params["id_user"])
    @challenge = Challenge.find(params["id_challenge"])
    pc = ParticipationChallenge.new(challenge_id: @challenge.id)
    p "*" * 100
    p pc, pc.valid?
    pc.save
    jtp = JointUsersToPpation.new(user_id: @user.id, participation_challenge_id: pc.id)
    p jtp
    p jtp.valid?
    jtp.save
    p "*" * 100
    redirect_to challenge_path(@challenge.id), notice: "Vous êtes bien inscrit sur le challenge"
  end
end
