module ProjectsHelper
  def project_owner?
    @project = Project.find(params[:id])
    if current_user.id != @project.owner.id
      redirect_to projects_path, 
      notice: "Vous devez être le propriétaire du projet pour accèder à cette partie"
    end
  end

  #helper to handle sorting
  def sorting_as_label(arr, string)
    case string
    when "Ancien"
      arr.sort { |a, b| a.created_at < b.created_at ? -1 : 1 }
    when "Récent"
      arr.sort { |a, b| a.created_at < b.created_at ? 1 : -1 }
    when ""
      return arr
    end
  end
end
