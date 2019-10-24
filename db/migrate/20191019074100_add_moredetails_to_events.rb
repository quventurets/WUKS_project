class AddMoredetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :startTime, :string
    add_column :events, :finishTime, :string
    add_column :events, :guestComp, :string
    add_column :events, :target, :string
  end
end
