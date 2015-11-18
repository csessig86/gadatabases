class Addsearchtermstodatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :searchterms, :string
  end
end
