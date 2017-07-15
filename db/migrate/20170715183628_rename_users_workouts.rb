class RenameUsersWorkouts < ActiveRecord::Migration[5.1]
  def self.up
   rename_table :users_workouts, :user_workouts
 end

 def self.down
   rename_table :user_workouts, :users_workouts
 end
end
