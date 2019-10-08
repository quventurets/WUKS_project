class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :outline, :text
    add_column :events, :otherinfo, :text
  end
end
