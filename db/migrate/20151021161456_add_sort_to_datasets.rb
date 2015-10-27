class AddSortToDatasets < ActiveRecord::Migration
  def change
  	add_column :datasets, :default_sort_column, :string
  	add_column :datasets, :default_sort_direction, :string
  end
end
