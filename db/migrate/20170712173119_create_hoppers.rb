class CreateHoppers < ActiveRecord::Migration[5.1]
  def change
    create_table :hoppers do |t|
      t.integer :workout_id
    end
  end
end
