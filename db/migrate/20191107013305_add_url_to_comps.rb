class AddUrlToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :url, :string
  end
end
