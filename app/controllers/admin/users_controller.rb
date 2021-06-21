class Admin::UsersController < ApplicationController
  before_action :is_admin?
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, notice:'Utilisateur supprimé'
  end


end
