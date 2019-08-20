class CreateKosens < ActiveRecord::Migration[5.2]
  def change
    create_table :kosens do |t|
      t.integer :kosen_id
      t.string :kosen_name

      t.timestamps
    end
  end
end
