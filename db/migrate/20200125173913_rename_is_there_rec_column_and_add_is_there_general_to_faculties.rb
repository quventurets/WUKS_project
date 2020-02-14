class RenameIsThereRecColumnAndAddIsThereGeneralToFaculties < ActiveRecord::Migration[5.2]
  def change
    rename_column :faculties, :isThereRec, :is_there_recomend
    add_column :faculties, :is_there_general, :boolean
  end
end
