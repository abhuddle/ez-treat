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

ActiveRecord::Schema.define(version: 20150729154523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string "name"
    t.string "state"
    t.string "city"
  end

  create_table "samples", force: true do |t|
    t.string   "user"
    t.string   "date"
    t.decimal  "conductivity",   precision: 10, scale: 2
    t.decimal  "ph",             precision: 10, scale: 2
    t.decimal  "magnesium",      precision: 10, scale: 2
    t.decimal  "calcium",        precision: 10, scale: 2
    t.decimal  "ca_mg_ratio",    precision: 10, scale: 2
    t.decimal  "iron",           precision: 10, scale: 2
    t.decimal  "copper",         precision: 10, scale: 2
    t.decimal  "phosphorus",     precision: 10, scale: 2
    t.decimal  "zinc",           precision: 10, scale: 2
    t.decimal  "sodium",         precision: 10, scale: 2
    t.decimal  "molybdate",      precision: 10, scale: 2
    t.decimal  "silicate",       precision: 10, scale: 2
    t.decimal  "boron",          precision: 10, scale: 2
    t.decimal  "aluminum",       precision: 10, scale: 2
    t.decimal  "sulfer",         precision: 10, scale: 2
    t.decimal  "manganese",      precision: 10, scale: 2
    t.decimal  "total_hardness", precision: 10, scale: 2
    t.decimal  "ortho_po4",      precision: 10, scale: 2
    t.decimal  "azole",          precision: 10, scale: 2
    t.decimal  "polymer",        precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tower_id"
    t.string   "company_id"
    t.datetime "sample_date"
    t.decimal  "city_sodium",    precision: 10, scale: 2
    t.decimal  "free_chlorine",  precision: 10, scale: 2
  end

  create_table "towers", force: true do |t|
    t.string "name"
    t.string "company_id"
    t.string "tower_type"
  end

  create_table "users", force: true do |t|
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
    t.string   "company_id"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
