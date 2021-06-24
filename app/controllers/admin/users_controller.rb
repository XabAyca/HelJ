class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, notice: 'Utilisateur supprimé'
  end

  def update
    @user = User.find(params[:id])
    @user.update(post_params)
    redirect_to admin_users_path, notice: 'Administrateur modifié'
  end

  private

  def post_params
    params.require(:user).permit(:admin)
  end
end
