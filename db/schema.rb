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

ActiveRecord::Schema.define(version: 20141122182316) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "tag"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["event_id"], name: "index_locations_on_event_id"

  create_table "locations_participants", id: false, force: true do |t|
    t.integer "location_id"
    t.integer "participant_id"
  end

  add_index "locations_participants", ["location_id"], name: "index_locations_participants_on_location_id"
  add_index "locations_participants", ["participant_id"], name: "index_locations_participants_on_participant_id"

  create_table "participants", force: true do |t|
    t.string   "email"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "visited_locations"
  end

  add_index "participants", ["event_id"], name: "index_participants_on_event_id"

  create_table "qrcs", force: true do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
