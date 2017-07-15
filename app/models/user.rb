class User < ActiveRecord::Base
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
  validates :email, uniqueness: { case_sensitive: false }
  
  has_many :comments
  has_many :user_workouts
  has_many :workouts, through: :user_workouts
  has_secure_password

end
