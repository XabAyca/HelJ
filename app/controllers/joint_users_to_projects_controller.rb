class JointUsersToProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :max_participations?, only: [:create]

  def create 
    @participation = JointUsersToProject.create(project_id:params[:id],user_id:current_user.id)
    redirect_to project_path(params[:id]),notice:'Vous êtes inscrit sur le projet, un email vous a été envoyé'
  end

  def destroy
    @project_participations = JointUsersToProject.where(project_id:params[:id])
    @project_participations.filter{
      |participation| participation.user_id == current_user.id
    }[0].delete
    redirect_to project_path(params[:id]), notice:'Vous n\'êtes plus inscrit sur le projet'
  end
end
