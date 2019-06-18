class RemovedifficultyFromUniv < ActiveRecord::Migration[5.2]
  def change
    remove_column :univs, :difficulty, :string
    remove_column :univs, :date, :string
    add_column :univs, :date_general, :string
    add_column :univs, :date_recommend, :string
    add_column :univs, :date_number, :float
    add_column :univs, :location, :string
    add_column :univs, :otherFac, :int
    add_column :univs, :examtypes, :int 
  end
end
