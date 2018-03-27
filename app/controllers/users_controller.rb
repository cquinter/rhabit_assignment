class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @user, include: :employees}
    end
  end

  def new
    @user = User.new
    @users = User.all.map { |user| [user.full_name, user.id] } #returns an array of arrays for the drop-down menu
  end

  def create
    User.create(user_params)
    redirect_to root_url
  end

  def edit
    @user = User.find(params[:id])
    @users = User.all.map { |user| [user.full_name, user.id] } #returns an array of arrays for the drop-down menu
    render 'new'
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_url
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_url
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :title)
  end

end
