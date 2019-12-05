class ChangeDatatypeAreaOfComps < ActiveRecord::Migration[5.2]
  def change
    change_column :comps, :area, :integer
  end
end
