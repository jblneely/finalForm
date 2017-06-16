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

ActiveRecord::Schema.define(version: 20170615191306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actns", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.date "open"
    t.date "closed"
    t.integer "duration"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actns_matters", force: :cascade do |t|
    t.bigint "actns_id"
    t.bigint "matters_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actns_id"], name: "index_actns_matters_on_actns_id"
    t.index ["matters_id"], name: "index_actns_matters_on_matters_id"
  end

  create_table "matters", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.date "open"
    t.date "closed"
    t.date "due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actns_matters", "actns", column: "actns_id"
  add_foreign_key "actns_matters", "matters", column: "matters_id"
end
