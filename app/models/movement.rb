class Movement < ApplicationRecord
  has_many :hoppers
  has_many :workouts, through: :workout_movements
end
