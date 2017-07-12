class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    num = @workout.number_of_movements(workout_params[:time_domain])
    movement_array = Hopper.choose_movements(num)
    rep_array = Hopper.assign_reps(movement_array)
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find_by(id: params[:id])
  end

  private

  def workout_params
    params.require(:workout).permit(:time_domain)
  end


end
