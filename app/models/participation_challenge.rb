class ParticipationChallenge < ApplicationRecord
  belongs_to :challenge, optional: true
  has_many :users, through: :joint_users_to_ppations
end
