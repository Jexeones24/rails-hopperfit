class ChangeStringFormatInMovements < ActiveRecord::Migration[5.1]
  def change
    change_column :movements, :video_url, :text
  end
end
