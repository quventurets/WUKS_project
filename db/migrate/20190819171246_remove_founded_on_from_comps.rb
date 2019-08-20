class RemoveFoundedOnFromComps < ActiveRecord::Migration[5.2]
  def change
    remove_column :comps, :founded_on, :date
  end
end
