class AddColumnFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :note, :string
  end
end
