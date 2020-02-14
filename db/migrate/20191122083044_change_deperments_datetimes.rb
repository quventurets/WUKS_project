class ChangeDepermentsDatetimes < ActiveRecord::Migration[5.2]
  def up
    change_column :departments, :date_general, :string
    change_column :departments, :date_recomend, :string
    change_column :departments, :date_general_pass, :string
  end

  def down
    change_column :departments, :date_general, :datetime
    change_column :departments, :date_recomend, :datetime
    change_column :departments, :date_general_pass, :datetime
  end
end
