class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :joint_users_to_projects
  has_many :projects, through: :joint_users_to_projects
  has_many :projects, foreign_key: "owner_id", class_name: "Project", dependent: :destroy
  has_many :joint_users_to_ppations
  has_many :participation_challenges, through: :joint_users_to_ppations
  has_many :joint_user_rooms
  has_many :rooms, through: :joint_user_rooms
  has_many :messages

  validates :first_name, presence: { message: "Prénom obligatoire" }
  validates :last_name, presence: { message: "Nom obligatoire" }
  #after_create :welcome_mail

  def welcome_mail
    UserMailer.welcome(self).deliver
  end
end
