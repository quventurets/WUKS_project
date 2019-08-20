class AddArticlesToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :what, :text
    add_column :comps, :why, :text
    add_column :comps, :how, :text
  end
end
