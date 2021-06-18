class ApplicationMailer < ActionMailer::Base
  default from: 'webcat6@protonmail.com'
  layout 'mailer'

  def joint_the_project(ids)
    @ids = ids
    user_email = "leolair.pro@gmail.com"
    mail(to: user_email, subject: "hey joint_the_challenge")
  end
end
