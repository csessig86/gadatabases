class Renamecolumnrecord1 < ActiveRecord::Migration
  def self.up
    rename_column :record1s, "2014 salary", :salary2014
    rename_column :record1s, "Travel subsistence", :Travelsubsistence
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
