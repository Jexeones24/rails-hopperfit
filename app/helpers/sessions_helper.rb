module SessionsHelper

# Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete[:user_id] #session is a hash, delete value of :user_id key
    @current_user = nil
  end
end
