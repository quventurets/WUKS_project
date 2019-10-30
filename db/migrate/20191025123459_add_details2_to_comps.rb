class AddDetails2ToComps < ActiveRecord::Migration[5.2]
  def change
    add_column :comps, :mission, :text
    add_column :comps, :occupation, :text
    add_column :comps, :want, :text
    add_column :comps, :comment, :text
  end
end
