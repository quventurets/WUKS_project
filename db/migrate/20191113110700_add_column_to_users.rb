class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :area, :string
    add_column :users, :future, :string
  end
end
