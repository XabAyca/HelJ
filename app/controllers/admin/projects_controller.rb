class Admin::ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @neededs = neededs_list()
    @users = User.all
  end

  def create
    @users = User.all
    @neededs = neededs_list()
    @project = Project.new(post_params)
    if @project.save
      @project.project_slug = "https://hel-j.herokuapp.com/project/#{@project.id}"
      flash[:success] = 'Projet crée'
      redirect_to admin_projects_path
    else
      flash.now[:messages] = @project.errors.full_messages[0]
      render 'new'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admin_projects_path, notice:'Le projet a été surrpimé'
  end

  def edit
    @project = Project.find(params[:id])
    @neededs = Needed.all
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(post_params())
      redirect_to admin_projects_path, notice:'Projet modifié'
    else
      flash.now[:messages] = @project.errors.full_messages[0]
      @neededs = neededs_list()
      render "edit"
    end
  end

  private

  def post_params
    params.require(:project).permit(:description, :logo_url, :project_title, :description, :figma_link, :git_link, :trello_link, :story, :needed_id, :owner_id)
  end

  def neededs_list
    neededs = []
    Needed.all.each { |needed| neededs << needed }
    return neededs
  end
end
