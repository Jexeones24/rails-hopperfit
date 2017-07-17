class AddBirthdayAndSummaryAndNameToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :birthday, :datetime
    add_column :profiles, :summary, :string
    add_column :profiles, :name, :string
  end
end
