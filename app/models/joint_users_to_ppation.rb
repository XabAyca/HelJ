class JointUsersToPpation < ApplicationRecord
  belongs_to :user
  belongs_to :participation_challenge
    after_create :welcome_mail

    def user_joint_challenge
      UserMailer.user_on_challenge(self).deliver
    end
end
