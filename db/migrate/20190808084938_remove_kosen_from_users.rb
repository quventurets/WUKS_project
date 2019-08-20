class RemoveKosenFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :kosen, :string
  end
end
