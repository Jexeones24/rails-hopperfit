class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :error, :success
  helper_method :current_user, :greet

  def current_user
    # byebug
    # session[:user_id]
      # this works
      # @current_user ||= User.find(session[:user_id])
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def logged_in?
      # this works
      !!current_user
  end


  def authorized
    if logged_in?
    else
    redirect_to login_path
    end
  end

end
