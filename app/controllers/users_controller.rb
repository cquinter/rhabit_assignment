class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
  end

  def new
    @user = User.new
    @users = User.all
  end

  def create
    User.create(user_params)
    redirect_to root_url
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.update(user_params)
    redirect_to root_url
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :title, :manager)
  end

end
