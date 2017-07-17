class SessionsController < ApplicationController
  def new #login page
    @user = User.find_by(id: session[:user_id])
  end

  def create
    # If the user exists AND the password entered is correct.
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      #save session object[:user_id] to @user.id
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
    # If user's login doesn't work, send them back to the login form.
      render 'users/new'
    end
  end


  #delete sessions/logout
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
