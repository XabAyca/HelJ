class ProjectsController < ApplicationController

  def index 
    @projects = Project.all
  end

  def show 
    @project = Project.find(params[:id])
  end

  def new
  end

  def create 
    @project = Project.new(post_params())
    if @project.save
      redirect_to projects_path
    else
      flash.now[:messages] = @project.errors.full_messages[0]
      render 'new'   
    end
  end

  def edit 
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update
      redirect_to project_path(@project.id)
    else
      flash.now[:messages] = @project.errors.full_messages[0]
      render 'edit'   
    end
  end

  def destroy 
    @project = Project.find(params[:id])
    @project.destroy
  end

  private

  def post_params
    params.require(:project).permit(:description,:project_slug,:logo_url,:project_title,:description,:owner,:figma_link,:git_link,:trello_link,:story)
  end

end
