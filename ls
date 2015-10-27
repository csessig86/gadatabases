class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :dataset_name
      t.text :description

      t.timestamps null: false
    end
  end
end
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
class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end
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
class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.string :SalaryJuly2013
      t.string :TotalFY13Salary
      t.string :TravelSubsistence

      t.timestamps null: false
    end
  end
end
class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
class DropRecord4 < ActiveRecord::Migration
  def change
  end
end
Test db/migrate/20151008151007_devise_create_users.rb db/migrate/20151008151202_create_datasets.rb db/migrate/20151008162109_create_record1s.rb db/migrate/20151008163502_add_attachment_datasets.rb db/migrate/20151008211725_create_record2s.rb db/migrate/20151009215525_create_record3s.rb db/migrate/20151012154133_change_record3s.rb db/migrate/20151012155528_change_record1.rb db/migrate/20151016164636_drop_record4.rb
class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :dataset_name
      t.text :description

      t.timestamps null: false
    end
  end
end
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
class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end
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
class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.string :SalaryJuly2013
      t.string :TotalFY13Salary
      t.string :TravelSubsistence

      t.timestamps null: false
    end
  end
end
class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
class DropRecord4 < ActiveRecord::Migration
  def change
  end
end
class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :dataset_name
      t.text :description

      t.timestamps null: false
    end
  end
end
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
class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end
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
class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.string :SalaryJuly2013
      t.string :TotalFY13Salary
      t.string :TravelSubsistence

      t.timestamps null: false
    end
  end
end
class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
class DropRecord4 < ActiveRecord::Migration
  def change
  end
end
class DropTable < ActiveRecord::Migration
  def up
    drop_table :products
  end
endclass DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :dataset_name
      t.text :description

      t.timestamps null: false
    end
  end
end
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
class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end
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
class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.string :SalaryJuly2013
      t.string :TotalFY13Salary
      t.string :TravelSubsistence

      t.timestamps null: false
    end
  end
end
class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
class DropRecord4 < ActiveRecord::Migration
  def change
  end
end
class DropTable < ActiveRecord::Migration
  def up
    drop_table :products
  end
endclass DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :dataset_name
      t.text :description

      t.timestamps null: false
    end
  end
end
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
class AddAttachmentDatasets < ActiveRecord::Migration
  def change
  	add_attachment :datasets, :file
  end
end
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
class CreateRecord3s < ActiveRecord::Migration
  def change
    create_table :record3s do |t|
      t.string :Department
      t.string :Name
      t.string :Gender
      t.string :County
      t.string :Position
      t.string :SalaryJuly2013
      t.string :TotalFY13Salary
      t.string :TravelSubsistence

      t.timestamps null: false
    end
  end
end
class ChangeRecord3s < ActiveRecord::Migration
  def change
  	change_column :record3s, :SalaryJuly2013,  :integer
  	change_column :record3s, :TotalFY13Salary,  :integer
  	change_column :record3s, :TravelSubsistence,  :decimal
  end
end
class ChangeRecord1 < ActiveRecord::Migration
  def change
  	change_column :record1s, "2014 salary",  :integer
  end
end
class DropRecord4 < ActiveRecord::Migration
  def change
  end
end
Text db/migrate/20151008151007_devise_create_users.rb db/migrate/20151008151202_create_datasets.rb db/migrate/20151008162109_create_record1s.rb db/migrate/20151008163502_add_attachment_datasets.rb db/migrate/20151008211725_create_record2s.rb db/migrate/20151009215525_create_record3s.rb db/migrate/20151012154133_change_record3s.rb db/migrate/20151012155528_change_record1.rb db/migrate/20151016164636_drop_record4.rb
