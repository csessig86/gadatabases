# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161101174130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datasets", force: :cascade do |t|
    t.string   "dataset_name"
    t.text     "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "fields"
    t.string   "default_sort_column"
    t.string   "default_sort_direction"
    t.string   "filterable_columns"
    t.string   "searchable_column"
  end

  create_table "record1s", force: :cascade do |t|
    t.string   "name"
    t.string   "department"
    t.string   "position"
    t.string   "gender"
    t.string   "county"
    t.integer  "salary2014"
    t.decimal  "travelsubsistence"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "record2s", force: :cascade do |t|
    t.string   "name"
    t.string   "citationtype"
    t.date     "violationdate"
    t.string   "intersection"
    t.string   "intersectiondetails"
    t.integer  "speed"
    t.string   "city"
    t.string   "state"
    t.integer  "dataset_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "record2s", ["dataset_id"], name: "index_record2s_on_dataset_id", using: :btree

  create_table "record3s", force: :cascade do |t|
    t.string   "department"
    t.string   "name"
    t.string   "gender"
    t.string   "county"
    t.string   "position"
    t.integer  "salaryjuly2013"
    t.integer  "totalfy13salary"
    t.integer  "travelsubsistence"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "record4s", force: :cascade do |t|
    t.string   "department"
    t.string   "name"
    t.string   "gender"
    t.string   "county"
    t.string   "position"
    t.integer  "salaryjuly2012"
    t.integer  "totalfy12salary"
    t.integer  "travelsubsistence"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "record5s", force: :cascade do |t|
    t.string   "department"
    t.string   "name"
    t.string   "gender"
    t.string   "county"
    t.string   "position"
    t.integer  "salary"
    t.integer  "totalsalary"
    t.integer  "travelsubsistence"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "record6s", force: :cascade do |t|
    t.string   "city"
    t.string   "address"
    t.string   "category"
    t.string   "buildingtype"
    t.string   "newalterationaddition"
    t.integer  "valuation"
    t.text     "permitholder"
    t.date     "issuance"
    t.string   "county"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "record7s", force: :cascade do |t|
    t.string   "department"
    t.string   "name"
    t.string   "gender"
    t.string   "position"
    t.integer  "salary"
    t.integer  "travel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "record8s", force: :cascade do |t|
    t.string   "name"
    t.string   "jobtitle"
    t.string   "department"
    t.integer  "fy16wages"
    t.integer  "fy17annualrate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
