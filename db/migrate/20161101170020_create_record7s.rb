class CreateRecord7s < ActiveRecord::Migration
  def change
    create_table :record7s do |t|
      t.string :department
      t.string :name
      t.string :gender
      t.string :position
      t.integer :salary
      t.integer :travel

      t.timestamps null: false
    end
  end
end
