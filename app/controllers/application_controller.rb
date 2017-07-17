class ApplicationController < ActionController::Base


  def current_user
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
