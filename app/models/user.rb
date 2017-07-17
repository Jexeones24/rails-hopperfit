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
    from = Date.today - 7.days
    to = Date.today
    self.workouts.where(created_at: 7.days.ago..Time.current).count
  end

end
