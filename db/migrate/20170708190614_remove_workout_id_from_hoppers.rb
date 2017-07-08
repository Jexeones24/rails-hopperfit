class RemoveWorkoutIdFromHoppers < ActiveRecord::Migration[5.1]
  def change
    remove_column :hoppers, :workout_id
  end
end
