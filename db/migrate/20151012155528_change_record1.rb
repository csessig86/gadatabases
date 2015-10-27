class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
