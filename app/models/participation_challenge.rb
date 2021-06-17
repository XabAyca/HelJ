class ParticipationChallenge < ApplicationRecord
  belongs_to :challenge
  has_many :joint_users_to_ppations
  has_many :users, through: :joint_users_to_ppations
end
