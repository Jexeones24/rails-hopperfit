class SessionsController < ApplicationController
  def new
  end

  def create #pulls user out of db using email
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:sesson][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
      byebug
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
