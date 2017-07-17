class AddVideoUrlToMovements < ActiveRecord::Migration[5.1]
  def change
    add_column :movements, :video_url, :string
  end
end
