# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_04_161439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_attendings", id: :bigint, default: nil, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "attendee_id"
    t.bigint "attended_event_id"
    t.bigint "status"
    t.index ["attended_event_id"], name: "idx_17634_index_event_attendings_on_attended_event_id"
    t.index ["attendee_id"], name: "idx_17634_index_event_attendings_on_attendee_id"
  end

  create_table "events", id: :integer, default: nil, force: :cascade do |t|
    t.text "location"
    t.date "event_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "event_creator_id"
    t.text "name"
    t.index ["event_creator_id"], name: "idx_17628_index_events_on_event_creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "username"
    t.text "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "password_digest"
  end

  add_foreign_key "event_attendings", "events", column: "attended_event_id", name: "event_attendings_attended_event_id_fkey"
  add_foreign_key "event_attendings", "users", column: "attendee_id", name: "event_attendings_attendee_id_fkey"
  add_foreign_key "events", "users", column: "event_creator_id", name: "events_event_creator_id_fkey"
end
