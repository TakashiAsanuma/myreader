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

ActiveRecord::Schema.define(version: 20160712093657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "region"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "categories", ["region"], name: "index_categories_on_region", using: :btree

  create_table "channels", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "region"
    t.integer  "category_id"
    t.boolean  "default_flag"
    t.boolean  "enabled"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "channels", ["category_id"], name: "index_channels_on_category_id", using: :btree
  add_index "channels", ["default_flag"], name: "index_channels_on_default_flag", using: :btree
  add_index "channels", ["enabled"], name: "index_channels_on_enabled", using: :btree
  add_index "channels", ["region"], name: "index_channels_on_region", using: :btree

  create_table "feeds", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "channel_id"
    t.integer  "region"
    t.string   "title",        limit: 255
    t.string   "url",          limit: 255
    t.datetime "published_at"
    t.string   "summary",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "default_flag"
  end

  add_index "feeds", ["channel_id"], name: "index_feeds_on_channel_id", using: :btree
  add_index "feeds", ["region"], name: "index_feeds_on_region", using: :btree
  add_index "feeds", ["site_id"], name: "index_feeds_on_site_id", using: :btree

  create_table "myreads", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "channel_id"
    t.integer  "region"
    t.boolean  "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "myreads", ["channel_id"], name: "index_myreads_on_channel_id", using: :btree
  add_index "myreads", ["enabled"], name: "index_myreads_on_enabled", using: :btree
  add_index "myreads", ["region"], name: "index_myreads_on_region", using: :btree
  add_index "myreads", ["user_id"], name: "index_myreads_on_user_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.integer  "channel_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "sites", ["channel_id"], name: "index_sites_on_channel_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.integer  "region",                             default: 0
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["region"], name: "index_users_on_region", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
