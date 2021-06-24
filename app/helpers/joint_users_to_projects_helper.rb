module JointUsersToProjectsHelper

  def max_participations?
    @participations = JointUsersToProject.where(project_id:params[:project_id])
    if @participations.count >= 3
      redirect_to project_path(params[:project_id]), notice:'Maximum de participants atteint' 
    end
  end
end
