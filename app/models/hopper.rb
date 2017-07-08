class Hopper < ApplicationRecord
  has_one :workout
  has_many :movements

  def create_workout
    @workout = Workout.new
  end
end

#time_domain
#workout_movements_id
