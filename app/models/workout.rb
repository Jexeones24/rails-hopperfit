class Workout < ApplicationRecord
  belongs_to :hopper
  has_many :movements, through: :workout_movements
  has_many :users, through: :user_workout

  # methods for packaging workout
end

#gets hopper_id
#to see movements => workout_movements
