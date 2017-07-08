class Movement < ApplicationRecord
  has_many :hoppers
  has_many :workouts, through: :workout_movements

  def reps
    puts "here"
    # magically choose rep number for particular movement (instance_eval)
    # set to instance variable
    # pass back to hopper
    @movement_objects_array << self 
  end

end
