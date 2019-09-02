class Faculty < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :department, :string
  end
end
