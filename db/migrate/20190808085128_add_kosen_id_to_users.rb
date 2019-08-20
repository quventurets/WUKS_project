class AddKosenIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kosen_id, :integer
  end
end
