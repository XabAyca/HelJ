class JointUsersToPpation < ApplicationRecord
  belongs_to :user
  belongs_to :participation_challenge
end
