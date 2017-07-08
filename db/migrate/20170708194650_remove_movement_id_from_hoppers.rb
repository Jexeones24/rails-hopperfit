class RemoveMovementIdFromHoppers < ActiveRecord::Migration[5.1]
  def change
    remove_column :hoppers, :movement_id
  end
end
