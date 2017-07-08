class MovementsController < ApplicationController

  def index
    @movements = Movement.all
  end

  def show
    @movement = Movement.find_by(id: params[:id])
  end

end
