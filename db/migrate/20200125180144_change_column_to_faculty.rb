class ChangeColumnToFaculty < ActiveRecord::Migration[5.2]
  def up
    change_column :faculties, :department, :text
  end

  def down
    change_column :faculties, :department, :string
  end
end
