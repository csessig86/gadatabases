class CreateRecord4s < ActiveRecord::Migration
  def change
    create_table :record4s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.integer :SalaryJuly2012
      t.integer :TotalFY12Salary
      t.integer :TravelSubsistence

      t.timestamps null: false
    end
  end
end
