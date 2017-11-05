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

ActiveRecord::Schema.define(version: 20160712093657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region"], name: "index_categories_on_region"
  end

  create_table "channels", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "region"
    t.integer "category_id"
    t.boolean "default_flag"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_channels_on_category_id"
    t.index ["default_flag"], name: "index_channels_on_default_flag"
    t.index ["enabled"], name: "index_channels_on_enabled"
    t.index ["region"], name: "index_channels_on_region"
  end

  create_table "feeds", id: :serial, force: :cascade do |t|
    t.integer "site_id"
    t.integer "channel_id"
    t.integer "region"
    t.string "title", limit: 255
    t.string "url", limit: 255
    t.datetime "published_at"
    t.string "summary", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default_flag"
    t.index ["channel_id"], name: "index_feeds_on_channel_id"
    t.index ["region"], name: "index_feeds_on_region"
    t.index ["site_id"], name: "index_feeds_on_site_id"
  end

  create_table "myreads", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "channel_id"
    t.integer "region"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_myreads_on_channel_id"
    t.index ["enabled"], name: "index_myreads_on_enabled"
    t.index ["region"], name: "index_myreads_on_region"
    t.index ["user_id"], name: "index_myreads_on_user_id"
  end

  create_table "sites", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "url", limit: 255
    t.integer "channel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_sites_on_channel_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.integer "region", default: 0
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["region"], name: "index_users_on_region"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
