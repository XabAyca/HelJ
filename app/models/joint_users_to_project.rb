class JointUsersToProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  after_create :mail_joint_project
  def mail_joint_project
    UserMailer.joint_project(current_user, params[:project_id]).deliver
  end
end
