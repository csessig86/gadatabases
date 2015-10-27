class RemoveSpacesInRecord2s < ActiveRecord::Migration
  def self.up
    rename_column :record2s, "Citation type", :Citationtype
    rename_column :record2s, "Violation date", :Violationdate
    rename_column :record2s, "Intersection details", :Intersectiondetails
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
