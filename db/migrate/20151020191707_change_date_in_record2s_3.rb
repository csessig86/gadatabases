class ChangeDateInRecord2s3 < ActiveRecord::Migration
  def up
    change_column :record2s, :Speed, :integer
  end

  def down
    change_column :record2s, :Speed, :varchar
  end
end
