class AddDetailsToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :founded_on, :date
    add_column :comps, :employees, :integer
    add_column :comps, :address, :string
  end
end
