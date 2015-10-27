class CreateRecord2s < ActiveRecord::Migration
  def change
    create_table :record2s do |t|
      t.string :Name
      t.string "Citation type"
      t.datetime "Violation date"
      t.string :Intersection
      t.string "Intersection details"
      t.string :Speed
      t.string :City
      t.string :State
      t.belongs_to :dataset, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
