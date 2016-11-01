class CreateRecord8s < ActiveRecord::Migration
  def change
    create_table :record8s do |t|
      t.string :name
      t.string :jobtitle
      t.string :department
      t.integer :fy16wages
      t.integer :fy17annualrate

      t.timestamps null: false
    end
  end
end
