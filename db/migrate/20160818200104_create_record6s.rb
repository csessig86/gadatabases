class CreateRecord6s < ActiveRecord::Migration
  def change
    create_table :record6s do |t|
      t.string :city
      t.string :address
      t.string :category
      t.string :buildingtype
      t.string :newalterationaddition
      t.integer :valuation
      t.text :permitholder
      t.date :issuance
      t.string :county

      t.timestamps null: false
    end
  end
end
