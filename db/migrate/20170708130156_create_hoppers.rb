class CreateHoppers < ActiveRecord::Migration[5.1]
  def change
    create_table :hoppers do |t|
      t.integer :time_domain
      t.integer :movement_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
