class AddDogIdToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :dog_id, :integer
  end
end
