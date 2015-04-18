# encoding: UTF-8
ActiveRecord::Schema.define(version: 20150418144658) do

  create_table "additions", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "extra_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "length"
    t.integer  "room_id"
    t.integer  "user_id"
    t.integer  "extra_id"
  end

  add_index "bookings", ["room_id"], name: "index_bookings_on_room_id"

  create_table "enquiries", force: :cascade do |t|
    t.string   "subject"
    t.text     "e_description"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "extracats", force: :cascade do |t|
    t.string   "extratype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "customer_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "viewings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "length"
    t.integer  "room_id"
    t.integer  "user_id"
  end

  add_index "viewings", ["room_id"], name: "index_viewings_on_room_id"

end
