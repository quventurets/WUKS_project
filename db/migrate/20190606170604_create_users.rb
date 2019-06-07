class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :schoolname
      t.integer :grade
      t.string :facluty

      t.timestamps
    end
  end
end
