class AddFoundedYmToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :founded_year, :integer
    add_column :comps, :founded_month, :integer
  end
end
