class ChangeDatatypeContentOfNews < ActiveRecord::Migration[5.2]
  def change
    change_column :news, :content, :text
  end
end
