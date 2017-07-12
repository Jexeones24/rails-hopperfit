class AddNumberOfMovementsToHoppers < ActiveRecord::Migration[5.1]
  def change
    add_column :hoppers, :number_of_movements, :integer
  end
end
