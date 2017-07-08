class AddHopperIdToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :hopper_id, :integer
  end
end
