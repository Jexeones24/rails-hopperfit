class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @name = @user.name
  end

  def create
    # byebug
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.delete
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
