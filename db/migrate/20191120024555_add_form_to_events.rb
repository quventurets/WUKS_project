class AddFormToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :form, :string
  end
end
