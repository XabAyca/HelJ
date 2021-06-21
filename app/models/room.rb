class Room < ApplicationRecord
  has_many :joint_user_rooms
  has_many :users, through: :joint_user_rooms
  has_many :messages
end
