class JointUsersToProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :max_participations?, only: [:create]

  def create 
    @participation = JointUsersToProject.create(project_id:params[:project_id],user_id:current_user.id)
    UserMailer.joint_project(current_user, params[:project_id]).deliver
    redirect_to project_path(params[:project_id]),notice:'Vous êtes inscrit sur le projet, un email vous a été envoyé'
  end

  def destroy
    @project_participations = JointUsersToProject.where(project_id:params[:project_id])
    p @project_participations
    @project_participations.filter{
      |participation| participation.user_id == current_user.id
    }[0].delete
    redirect_to project_path(params[:project_id]), notice:'Vous n\'êtes plus inscrit sur le projet'
  end
end
