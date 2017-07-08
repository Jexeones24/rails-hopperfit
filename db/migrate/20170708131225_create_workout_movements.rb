class CreateWorkoutMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_movements do |t|
      t.integer :workout_id
      t.integer :movement_id

      t.timestamps
    end
  end
end
