class WorkoutsController < ApplicationController
  before_action :authorized, only: [:index]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    @hopper = Hopper.new(number_of_movements: @workout.number_of_movements)
    @workout.hoppers << @hopper
    @hopper.choose_movements.each { |movement| @workout.movements << movement}
    @workout.name = @workout.faker
    @workout.save
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    @hopper = @workout.hoppers.last
    @reps_array = @hopper.assign_reps(@hopper.workout.movements)
  end

  private

  def workout_params
    params.require(:workout).permit(:time_domain)
  end


end
