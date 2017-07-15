class UsersController < ApplicationController
  before_action :authorized, only: [:index]
  # has_secure_password

  def index
    @users = User.all
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # redirect_to '/signup'
      render :new
    end
  end

  def show
    @current_user = User.find_by(id: params[:id])
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
    params.require(:user).permit(:name, :email, :email_confirmation, :password,  :password_confirmation)
  end

end
