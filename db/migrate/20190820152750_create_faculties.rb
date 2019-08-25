class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :s_name
      t.string :f_name
      t.string :date_general
      t.boolean :isThereRec
      t.string :date_recomend
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
