class CreateComps < ActiveRecord::Migration[5.2]
  def change
    create_table :comps do |t|
      t.string :name
      t.string :area
      t.string :scale
      t.string :place

      t.timestamps
    end
  end
end
