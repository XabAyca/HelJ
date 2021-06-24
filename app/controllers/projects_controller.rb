class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :project_owner?, only: [:edit, :destroy, :update]

  def index
    if params[:project_title] && params[:sort]
      @projects = Project.where("project_title Like ?", "%#{params[:project_title]}%")
      @projects = sorting_as_label(@projects, params[:sort])
    else
      @projects = Project.all
    end
  end

  def show
    @project = Project.find(params[:id])
    @participations = JointUsersToProject.where(project_id: @project.id)
    @user_participations = @participations.filter { |participation| participation.user_id == current_user.id }
  end

  def new
    @neededs = neededs_list()
    @project = Project.new()
  end

  def create
    @project = Project.new(post_params())
    @project.owner_id = current_user.id
    if @project.save
      @project.project_slug = "https://hel-j.herokuapp.com/project/#{@project.id}"
      redirect_to projects_path
    else
      @neededs = neededs_list()
      flash.now[:alert] = @project.errors.full_messages[0]
      render "new"
    end
  end

  def edit
    @neededs = neededs_list()
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(post_params())
      redirect_to project_path(@project.id)
    else
      flash.now[:messages] = @project.errors.full_messages[0]
      @neededs = neededs_list()
      render "edit"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path, notice: "Projet supprimé"
  end

  private

  def post_params
    params.require(:project).permit(:description, :logo_url, :project_title, :description, :figma_link, :git_link, :trello_link, :story, :needed_id)
  end

  def neededs_list
    neededs = []
    Needed.all.each { |needed| neededs << needed }
    return neededs
  end
end
