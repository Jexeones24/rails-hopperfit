class AddStyleToHoppers < ActiveRecord::Migration[5.1]
  def change
    add_column :hoppers, :style, :string
  end
end
