class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.datetime :date
      t.string :pref
      t.string :type
      t.integer :status

      t.timestamps
    end
  end
end
