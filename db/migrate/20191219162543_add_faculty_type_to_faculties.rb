class AddFacultyTypeToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :faculty_type, :string
  end
end
