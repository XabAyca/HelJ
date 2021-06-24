module ApplicationHelper
  include ProjectsHelper
  include JointUsersToProjectsHelper

  def is_admin?
    if current_user.admin == false
      redirect_to root_path, notice: 'Vous devez être administrateur pour accèder à cette partie du site'
    end
  end
end
