class AddTimeDomainToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :time_domain, :integer
  end
end
