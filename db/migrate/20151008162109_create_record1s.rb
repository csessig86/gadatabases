class CreateRecord1s < ActiveRecord::Migration
  def change
    create_table :record1s do |t|
      t.string :Name
      t.string :Department
      t.string :Position
      t.string :Gender
      t.string :County
      t.decimal "2014 salary"
      t.decimal "Travel subsistence"

      t.timestamps null: false
    end
  end
end
