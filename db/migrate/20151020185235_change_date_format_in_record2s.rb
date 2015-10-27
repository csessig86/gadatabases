class ChangeDateFormatInRecord2s < ActiveRecord::Migration
  def up
    change_column :record2s, :Violationdate, :date
  end

  def down
    change_column :record2s, :Violationdate, :datetime
  end
end
