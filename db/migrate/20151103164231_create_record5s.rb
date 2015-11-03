class CreateRecord5s < ActiveRecord::Migration
  def change
    create_table :record5s do |t|
      t.string :department
      t.string :name
      t.string :gender
      t.string :county
      t.string :position
      t.integer :salary
      t.integer :totalsalary
      t.integer :travelsubsistence

      t.timestamps null: false
    end
  end
end
