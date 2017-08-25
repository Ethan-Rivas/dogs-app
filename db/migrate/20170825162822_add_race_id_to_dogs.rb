class AddRaceIdToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :race_id, :integer
  end
end
