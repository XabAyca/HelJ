class JointTheProjectController < ApplicationController
    def index
        @user = User.find(params['id_user'])
        @challenge = Challenge.find(params['id_challenge'])
        JointUsersToPpation.create(user_id: @user.id, participation_challenge_id: @challenge.id)
    end
    def send_mail
        ids = [32 , 12]
        ApplicationMailer.joint_the_project(ids).deliver
    end
end
