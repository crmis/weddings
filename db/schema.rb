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

ActiveRecord::Schema.define(version: 20150310154834) do

  create_table "extras", force: :cascade do |t|
    t.string   "extraimg"
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "extracat_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "extraimg_file_name"
    t.string   "extraimg_content_type"
    t.integer  "extraimg_file_size"
    t.datetime "extraimg_updated_at"
  end

  create_table "rmcats", force: :cascade do |t|
    t.string   "rmtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "size"
    t.integer  "capacity"
    t.decimal  "price"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "rmcat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false, null: false
    t.boolean  "customer",               default: true,  null: false
    t.string   "FullName"
    t.string   "customer_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "viewings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "length"
    t.integer  "room_id"
    t.integer  "user_ID"
  end

  add_index "viewings", ["room_id"], name: "index_viewings_on_room_id"

end
