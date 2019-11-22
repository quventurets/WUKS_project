class RemoveStatusFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :status, :integer
  end
end
