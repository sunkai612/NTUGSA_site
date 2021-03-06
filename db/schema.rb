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

ActiveRecord::Schema.define(version: 20140910151822) do

  create_table "administrators", force: true do |t|
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
    t.string   "name"
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true

  create_table "boards", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "posts_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
    t.integer  "post_id"
    t.string   "commenter"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "event_date"
    t.string   "description"
    t.string   "location"
    t.string   "link"
    t.string   "video"
    t.boolean  "is_gsa"
    t.string   "image_large_file_name"
    t.string   "image_large_content_type"
    t.integer  "image_large_file_size"
    t.datetime "image_large_updated_at"
    t.string   "image_small_file_name"
    t.string   "image_small_content_type"
    t.integer  "image_small_file_size"
    t.datetime "image_small_updated_at"
    t.string   "organization"
  end

  create_table "intros", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "organization_id"
    t.string   "name"
    t.string   "photo"
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "member_order"
  end

  create_table "organizations", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
    t.string   "type_name"
    t.integer  "comments_count", default: 0
    t.string   "author"
    t.boolean  "is_top?",        default: false
  end

  create_table "records", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "organization_id"
    t.datetime "date"
    t.string   "location"
    t.string   "image_large_file_name"
    t.string   "image_large_content_type"
    t.integer  "image_large_file_size"
    t.datetime "image_large_updated_at"
    t.string   "image_small_file_name"
    t.string   "image_small_content_type"
    t.integer  "image_small_file_size"
    t.datetime "image_small_updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "rotators", force: true do |t|
    t.string   "title"
    t.datetime "eventDate"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "image_order"
  end

  create_table "statutes", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "boards_count"
    t.integer  "posts_count"
    t.integer  "comments_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
