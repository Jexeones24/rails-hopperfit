class User < ActiveRecord::Base
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
  validates :email, uniqueness: { case_sensitive: false }
  has_secure_password

  has_one :profile
  has_many :comments
  has_many :user_workouts
  has_many :workouts, through: :user_workouts

  after_create :create_profile

  def workouts_per_week
    self.workouts.where(created_at: 7.days.ago..Time.current).count
  end

  def workouts_last_two_days
    self.workouts.where(created_at: 2.days.ago..Time.current).count
  end

  def endurance
    self.workouts.where(time_domain: 15..60).count
  end

  def power
    self.workouts.where(time_domain: 5..14).count
  end

end
