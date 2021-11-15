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

ActiveRecord::Schema.define(version: 2021_11_01_114251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "music_reserves", force: :cascade do |t|
    t.string "course_no"
    t.string "rec_title"
    t.string "call_no"
    t.string "composer"
    t.string "file_name"
    t.string "file_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "barcode"
    t.string "author"
    t.string "title"
    t.string "call_no"
    t.string "sub_loc"
    t.string "location"
    t.string "copy"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
