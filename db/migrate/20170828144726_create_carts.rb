class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :dog_id
      t.integer :vaccine_id
      t.datetime :vaccine_date

      t.timestamps
    end
  end
end
