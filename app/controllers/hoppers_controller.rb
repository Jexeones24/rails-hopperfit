class HoppersController < ApplicationController

  def index
    @workouts = Workout.all
  end
  def new
    @hopper = Hopper.new
  end

  def create
    # byebug
    @hopper = Hopper.new(hopper_params)
    @hopper.save
    redirect_to hopper_path(@hopper)
  end

  def show
    render 'workouts/show.html.erb'
  end

  private
  def hopper_params
    params.require(:hopper).permit(:time_domain)
  end

end
