class AddKosenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kosen, :string
  end
end
