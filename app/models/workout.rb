class Workout < ApplicationRecord
  has_many :workout_movements
  has_many :movements, through: :workout_movements
  has_many :user_workouts
  has_many :users, through: :user_workout

  def number_of_movements(time_domain)
    if time_domain.to_i.between?(5, 15)
      movement_num = rand(1..3)
    elsif time_domain.to_i.between?(16, 35)
      rmovement_num = rand(3..5)
    else
      movement_num = rand(5..8)
    end
  end

  def display_workout(rep_array)
    #give time_domain, rep_array, movement_array to view
  end

end
