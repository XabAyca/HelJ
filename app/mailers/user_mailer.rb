class UserMailer < ApplicationMailer
    def welcome(user)
        @user = user
        mail(to: @user.email, subject: "Bienvenue #{@user.first_name}")
      end
end
