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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121220131532) do

  create_table "benchmark_facts", :force => true do |t|
    t.integer "benchmark_run_id"
    t.integer "region_id"
    t.integer "category_id"
    t.integer "department_id"
    t.integer "measure_id"
    t.decimal "lowest_value"
    t.decimal "avg_value"
    t.decimal "upper_avg_value"
    t.decimal "highest_value"
    t.decimal "median_value"
    t.decimal "bm_value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "benchmark_runs", :force => true do |t|
    t.integer "benchmark_set_id"
    t.integer "act_month"
    t.string "note"
    t.integer "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "benchmark_sets", :force => true do |t|
    t.string "bm_id"
    t.string "name"
    t.integer "percentile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "fax"
    t.string "mobile"
    t.string "email"
    t.string "address1"
    t.string "address2"
    t.string "address3"
    t.string "address4"
    t.string "user_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "versions", :force => true do |t|
    t.string "item_type", :null => false
    t.integer "item_id", :null => false
    t.string "event", :null => false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
