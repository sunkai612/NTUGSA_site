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

ActiveRecord::Schema.define(version: 20140811150129) do

  create_table "administrators", force: true do |t|
    t.string   "uid"
    t.string   "pwd"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
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

end
