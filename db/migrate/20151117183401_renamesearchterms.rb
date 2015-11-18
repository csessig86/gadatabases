class Renamesearchterms < ActiveRecord::Migration
  def change
     rename_column :datasets, :searchterms, :search_terms
  end
end
