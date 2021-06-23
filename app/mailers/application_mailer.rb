class ApplicationMailer < ActionMailer::Base
  default from: 'webcat6@protonmail.com'
  layout 'mailer'

  def joint_the_challenge(challenge, user)
    @challenge = challenge
    @user = user
    mail(to: @user.email , subject: "hey joint_the_challenge")
  end
end
