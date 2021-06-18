class UserMailer < ApplicationMailer
    def welcome(user)
        @user = user
        mail(to: @user.email, subject: "Bienvenue #{@user.first_name}")
    end
    def joint_project(user, project)
      @user = user
      @project = Project.find(project)
      mail(to: @user.email, subject: "Tu participe au projet")
  end
end