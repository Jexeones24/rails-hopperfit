class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find_by(id: params[:id])
  end

  private

  def workout_params
    params.require(:workout).permit(:name)
  end
end
