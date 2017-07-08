class User < ApplicationRecord
  has_many :workouts, through: :user_workouts
end
