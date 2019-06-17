class CreateUnivs < ActiveRecord::Migration[5.2]
  def change
    create_table :univs do |t|
      t.string :name
      t.string :date
      t.string :difficulty

      t.timestamps
    end
  end
end
