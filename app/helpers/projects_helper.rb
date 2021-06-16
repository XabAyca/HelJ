module ProjectsHelper

  def project_owner?
    @project=Project.find(params[:id])
    if current_user.id != @project.owner.id
      redirect_to projects_path,notice:'Vous devez être le propriètaire du projet pour accèder à cette partie'
    end    
  end
end
