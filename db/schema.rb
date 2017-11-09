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

ActiveRecord::Schema.define(version: 20171109092705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bed_types", force: :cascade do |t|
    t.string   "b_type",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bed_types", ["b_type"], name: "index_bed_types_on_b_type", unique: true, using: :btree

  create_table "beds", id: false, force: :cascade do |t|
    t.integer  "bed_number",  null: false
    t.integer  "room_number", null: false
    t.string   "b_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "beds", ["bed_number", "room_number"], name: "index_beds_on_bed_number_and_room_number", unique: true, using: :btree

  create_table "pgs", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", primary_key: "room_number", force: :cascade do |t|
    t.integer  "pg_id"
    t.integer  "floor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beds", "bed_types", column: "b_type", primary_key: "b_type", on_delete: :cascade
  add_foreign_key "beds", "rooms", column: "room_number", primary_key: "room_number", on_delete: :cascade
end
