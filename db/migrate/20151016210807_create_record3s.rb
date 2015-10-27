class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.integer :SalaryJuly2013
      t.integer :TotalFY13Salary
      t.integer :TravelSubsistence

      t.timestamps null: false
    end
  end
end
