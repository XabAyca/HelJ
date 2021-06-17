class ApplicationMailer < ActionMailer::Base
  default from: 'webcat6@protonmail.com'
  layout 'mailer'
  def joint_the_project
    user_email = "leolair.pro@gmail.com"
    mail(to: user_email, subject: "hey joint_the_project")
  end
end
