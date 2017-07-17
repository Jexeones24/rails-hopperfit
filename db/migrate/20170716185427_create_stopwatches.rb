class CreateStopwatches < ActiveRecord::Migration[5.1]
  def change
    create_table :stopwatches do |t|

      t.timestamps
    end
  end
end
