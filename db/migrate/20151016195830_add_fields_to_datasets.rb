class AddFieldsToDatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :fields, :string
  end
end
