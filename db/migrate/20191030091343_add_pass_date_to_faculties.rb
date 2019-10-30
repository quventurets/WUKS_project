class AddPassDateToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :date_general_pass, :string
    add_column :faculties, :date_recomend_pass, :string
  end
end
