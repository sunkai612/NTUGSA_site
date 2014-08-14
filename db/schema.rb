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

ActiveRecord::Schema.define(version: 20140814080406) do

  create_table "administrators", force: true do |t|
    t.string   "uid"
    t.string   "pwd"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "image"
    t.datetime "eventDate"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "comments_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
    t.string   "type_name"
  end

  create_table "records", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "eventDate"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rotators", force: true do |t|
    t.string   "image"
    t.string   "title"
    t.datetime "eventDate"
    t.integer  "order"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
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
