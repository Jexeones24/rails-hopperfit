class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :name
      t.string :style
      t.string :rep_range

      t.timestamps
    end
  end
end
