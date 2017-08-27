class AddSexToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :sex, :string
  end
end
