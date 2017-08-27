class CreateVaccines < ActiveRecord::Migration[5.0]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
