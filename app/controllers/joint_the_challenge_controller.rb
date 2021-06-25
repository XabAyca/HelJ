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

  def create
    @user = User.find(params["user_id"])
    @challenge = Challenge.find(params["challenge_id"])
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

  def destroy
    @user = User.find(params["id_user"])
    @challenge = Challenge.find(params["id_challenge"])
    JointUsersToPpation.where(participation_challenge: params["participation_id"], user_id: @user.id).delete
    redirect_to challenge_path(@challenge.id), notice: "Vous avez quitter ce challenge"
  end
end
