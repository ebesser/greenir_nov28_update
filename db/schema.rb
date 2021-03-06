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

ActiveRecord::Schema.define(version: 20150303021351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "archived_packages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "terms"
    t.string   "type"
    t.float    "price"
    t.float    "percent_renewable"
    t.integer  "duration"
    t.integer  "provider_id"
    t.integer  "sales_id"
    t.float    "cancellation_fee"
    t.datetime "package_creation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "electric_packages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "terms"
    t.string   "plan_type"
    t.string   "price"
    t.string   "percent_renewable"
    t.integer  "duration"
    t.integer  "provider_id"
    t.integer  "sales_id"
    t.string   "cancellation_fee"
    t.string   "contract_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forgot_account_number_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "package_id"
  end

  create_table "not_availables", force: true do |t|
    t.string "email"
    t.string "zip"
  end

  create_table "orders", force: true do |t|
    t.integer "user_id"
    t.integer "sales_id"
  end

  create_table "prelaunches", force: true do |t|
    t.string "email"
    t.string "zip"
  end

  create_table "providers", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.string   "con_ed_id"
    t.string   "home_ownership_type"
    t.string   "lease_termination_date"
    t.integer  "package_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
