class AddMovementIdToHoppers < ActiveRecord::Migration[5.1]
  def change
    add_column :hoppers, :movement_id, :integer, array: true, default: []
  end
end
