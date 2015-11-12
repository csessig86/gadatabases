class Addfilterstodatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :filters, :string
  end
end
