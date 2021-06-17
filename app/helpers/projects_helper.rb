module ProjectsHelper
  def project_owner?
    @project = Project.find(params[:id])
    if current_user.id != @project.owner.id
      redirect_to projects_path, notice: "Vous devez être le propriètaire du projet pour accèder à cette partie"
    end
  end

  def sorting_as_label(arr, string)
    case string
    when "Old"
      arr.sort { |a, b| a.created_at < b.created_at ? -1 : 1 }
    when "Recent"
      arr.sort { |a, b| a.created_at < b.created_at ? 1 : -1 }
    end
  end
end
