class CreateFaclties < ActiveRecord::Migration[5.2]
  def change
    create_table :faclties do |t|
      t.string :s_name
      t.string :f_name
      t.string :date_general
      t.boolean :isThereRec
      t.string :date_recomend

      t.timestamps
    end
  end
end
