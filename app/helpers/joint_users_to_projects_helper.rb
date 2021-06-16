module JointUsersToProjectsHelper

  def max_participations? 
    @participations = JointUsersToProject.where(project_id:params[:id])
    if @participations.count >= 3
      redirect_to project_path(params[:id]), notice:'Maximum de participants atteint' 
    end
  end
end
