class User < ApplicationRecord
  has_one :profile, :dependent => :destroy
  has_many :comments
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  after_create :create_profile

  def create_profile
    self.profile = Profile.create
  end
end
