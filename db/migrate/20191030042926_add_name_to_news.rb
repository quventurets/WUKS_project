class AddNameToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :name, :string
  end
end
