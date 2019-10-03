class AddRubiToUnivs < ActiveRecord::Migration[5.2]
  def change
    add_column :univs, :rubi, :string
  end
end
