class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :joint_users_to_projects
  has_many :projects, through: :joint_users_to_projects
  has_many :projects, foreign_key: "owner_id", class_name: "Project", dependent: :destroy
  has_many :participation_challenge, through: :joint_users_to_ppations

  #after_create :welcome_mail

  def welcome_mail
    UserMailer.welcome(self).deliver
  end
end
