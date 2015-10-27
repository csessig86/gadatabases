class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
