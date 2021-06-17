class Project < ApplicationRecord
  validates :project_title,
    presence: { message: "Le titre est obligatoire" },
    length: { in: 2..30, wrong_length: "Le titre doit faire entre 2 et 30 caractères" }

  validates :description,
    presence: { message: "La description est obligatoire" },
    length: { in: 50..200, wrong_length: "La description doit faire entre 50 et 200 caractères" }

  validates :owner,
    presence: true

  validates :figma_link,
    presence: { message: "Un lien Figma est obligatoire" },
    format: { with: /(?:https:\/\/)?(?:www\.)?figma\.com\/(file|proto)\/([0-9a-zA-Z]{22,128})(?:\/?([^\?]+)?(.*))?/, message: 'Ce lien n\'est pas valide' }

  validates :git_link, allow_blank: true,
                       format: { with: /(?:https:\/\/)?(?:www\.)?github\.com\/([0-9a-zA-Z]{2,128})\/([0-9a-zA-Z]{2,128})/, message: 'Ce lien n\'est pas valide' }

  validates :trello_link, allow_blank: true,
                          format: { with: /(?:https:\/\/)?(?:www\.)?trello\.com(?:\/([0-9a-zA-Z]{2,128}))?(?:\/([0-9a-zA-Z]{1,128}))?(?:\/([0-9a-zA-Z]{2,128}))?(?:\/([0-9a-zA-Z]{2,128}))?(?:\/([0-9a-zA-Z]{2,128}))?/, message: 'Ce lien n\'est pas valide' }

  validates :needed, allow_blank: true,
                     presence: { message: "Le besoins doit être défini" }

  has_many :joint_users_to_projects
  has_many :users, through: :joint_users_to_projects
  belongs_to :needed
  belongs_to :owner, class_name: "User"
end
