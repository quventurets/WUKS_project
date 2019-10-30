class AddUrlToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :url, :string
  end
end
