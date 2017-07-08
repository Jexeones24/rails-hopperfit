class Workout < ApplicationRecord
  belongs_to :hopper
  has_many :movements, through: :workout_movements
  has_many :users, through: :user_workout
end
