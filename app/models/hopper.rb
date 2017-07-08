class Hopper < ApplicationRecord
  belongs_to :user
  has_one :workout
  has_many :movements
end
