class JointUsersToPpation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :participation_challenge, optional: true
    #after_create :user_joint_challenge

    def user_joint_challenge
      UserMailer.user_on_challenge(self).deliver
    end
end
