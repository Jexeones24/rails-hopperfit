class RemoveNameFromWorkouts < ActiveRecord::Migration[5.1]
  def change
    remove_column :workouts, :name
  end
end
