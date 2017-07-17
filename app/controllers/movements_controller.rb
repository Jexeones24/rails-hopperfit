class MovementsController < ApplicationController

  def index
    @movements = Movement.all
  end

  def show
    @movement = Movement.find_by(id: params[:id])
    @user = User.find(session[:user_id])
  end
end
