class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :univ_name
      t.string :faculty_name
      t.string :name
      t.datetime :date_general
      t.datetime :date_recomend
      t.datetime :date_general_pass
      t.string :date_recomend_pass
      t.boolean :math
      t.boolean :english
      t.boolean :physics
      t.boolean :chemistry
      t.boolean :biology
      t.boolean :special
      t.boolean :paper
      t.boolean :integration
      t.boolean :practical
      t.boolean :external_english
      t.boolean :interview

      t.timestamps
    end
  end
end
