class UserMailer < ApplicationMailer
    def welcome(user)
        @user = user
        mail(to: @user.email, subject: "Bienvenue #{@user.first_name}")
    end
    def joint_project(user, project)
      @user = user
      @project = Project.find(project)
      mail(to: @user.email, subject: "Tu participes au projet")
  end
  def user_on_challenge(user, challenge)
    @user = User.find(user)
    @challenge = Challenge.find(challenge)
    mail(to: @user.email , subject: "Tu as rejoint un challenge")
  end
end