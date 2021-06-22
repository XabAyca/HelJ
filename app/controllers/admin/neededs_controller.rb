class Admin::NeededsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin?

  def index
    @neededs = Needed.all
  end

  def new
    @needed = Needed.new
  end

  def create
    @needed = Needed.new(post_params)
    if @needed.save
      flash[:success] = 'Besoins créé'
      redirect_to admin_neededs_path
    else
      flash[:error] = 'Besoins non créé'
      render 'new'
    end
  end

  def destroy
    @needed = Needed.find(params[:id])
    @needed.destroy
    flash[:success] = 'Besoins supprimé'
    redirect_to admin_neededs_path
  end

  private

  def post_params
    params.require(:needed).permit(:name, :description)
  end

end
