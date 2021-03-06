class WorkoutsController < ApplicationController
  before_action :authorize

  def index
    @workouts = Workout.all
    flash[:alert] = "HI"

  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    @hopper = Hopper.new(style: @workout.style, number_of_movements: @workout.number_of_movements)
    @workout.hoppers << @hopper
    @hopper.choose_movements.each { |movement| @workout.movements << movement}
    @workout.name = @workout.faker
    @user_id = session[:user_id]
    @user = User.find_by(id: @user_id)
    @workout.users << @user
    if @workout.save
      redirect_to workout_path(@workout)
    else
      redirect_to
    end
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    @hopper = @workout.hoppers.last
    @reps_array = @hopper.assign_reps(@hopper.workout.movements)
    @stopwatch = Stopwatch.new
  end

  private

  def workout_params
    params.require(:workout).permit(:time_domain)
  end


end
