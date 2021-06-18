class UserMailer < ApplicationMailer
    def welcome(user)
        @user = user
        mail(to: @user.email, subject: "Bienvenue #{@user.first_name}")
    end
    def user_on_challenge(joint)
      user_id = joint.index_joint_users_to_ppations_on_user_id
      challenge_id = joint.index_joint_users_to_ppations_on_participation_challenge_id
      @user = User.find(user_id)
      @challenge = Challenge.find(challenge_id)
      mail(to: @user.email, subject: "Tu participe au challenge")
  end
end