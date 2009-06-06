# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090606180300) do

  create_table "chores", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "duration"
    t.boolean  "on_monday"
    t.boolean  "on_tuesday"
    t.boolean  "on_wednesday"
    t.boolean  "on_thursday"
    t.boolean  "on_friday"
    t.boolean  "on_saturday"
    t.boolean  "on_sunday"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "household_id"
  end

  create_table "households", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "area_code"
    t.integer  "mobile_number"
    t.boolean  "manager"
    t.integer  "household_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
