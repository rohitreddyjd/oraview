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

ActiveRecord::Schema.define(:version => 20170307211045) do

  create_table "oraview_admins", :force => true do |t|
    t.string   "host_name",    :null => false
    t.text     "description"
    t.integer  "port",         :null => false
    t.string   "service_name", :null => false
    t.string   "username",     :null => false
    t.string   "password",     :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "dbname"
  end

  create_table "users", :force => true do |t|
    t.integer  "age"
    t.string   "username",   :limit => 125
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "phone"
  end

end
