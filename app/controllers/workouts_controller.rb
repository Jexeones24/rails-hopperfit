class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    @hopper = Hopper.new
  end

  def create
    @workout = Workout.create
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find_by(id: params[:id])
  end

end
