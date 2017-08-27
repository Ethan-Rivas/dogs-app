class AddSizeToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :size, :string
  end
end
