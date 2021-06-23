class JointTheChallengeController < ApplicationController
    def index
        @user = User.find(params['id_user'])
        @challenge = Challenge.find(params['id_challenge'])
        JointUsersToPpation.create(user_id: @user.id, participation_challenge_id: @challenge.id)
        ids = [@user.id , @challenge.id]
        ApplicationMailer.joint_the_challenge(ids).deliver
    redirect_to challenge_path(@challenge.id),notice:'Vous êtes inscrit sur le challenge, un email vous a été envoyé'

    end

    
end
