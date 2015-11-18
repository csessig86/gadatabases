class Renamesearchablecolumns < ActiveRecord::Migration
  def self.up
    rename_column :datasets, :filters, :filterable_columns
    rename_column :datasets, :search_terms, :searchable_column
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
