class AddOriginalTextToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :has_original_format, :integer
    add_column :comps, :original_text, :text
  end
end