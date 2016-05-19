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

ActiveRecord::Schema.define(version: 20160519190814) do

  create_table "clans", force: true do |t|
    t.integer  "user_id"
    t.integer  "dragon_id"
    t.string   "name"
    t.string   "species"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clans", ["dragon_id"], name: "index_clans_on_dragon_id"
  add_index "clans", ["user_id"], name: "index_clans_on_user_id"

  create_table "dragons", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "race"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dragons", ["user_id"], name: "index_dragons_on_user_id"

  create_table "elements", force: true do |t|
    t.integer  "user_id"
    t.integer  "dragon_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "elements", ["dragon_id"], name: "index_elements_on_dragon_id"
  add_index "elements", ["user_id"], name: "index_elements_on_user_id"

  create_table "strokes", force: true do |t|
    t.integer  "user_id"
    t.integer  "dragon_id"
    t.string   "name"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "strokes", ["dragon_id"], name: "index_strokes_on_dragon_id"
  add_index "strokes", ["user_id"], name: "index_strokes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "user_type"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
