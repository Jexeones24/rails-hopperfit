class User < ActiveRecord::Base
  has_one :profile, :dependent => :destroy
  has_many :comments
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  after_create :create_profile

  has_secure_password

  def create_profile
    self.profile = Profile.create
  end

end
