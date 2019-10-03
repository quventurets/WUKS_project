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

ActiveRecord::Schema.define(version: 2019_10_03_063441) do

  create_table "comps", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.string "scale"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employees"
    t.string "address"
    t.integer "founded_year"
    t.integer "founded_month"
    t.text "what"
    t.text "why"
    t.text "how"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "s_name"
    t.string "f_name"
    t.string "date_general"
    t.boolean "isThereRec"
    t.string "date_recomend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "department"
  end

  create_table "kosens", force: :cascade do |t|
    t.integer "kosen_id"
    t.string "kosen_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "univs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date_general"
    t.string "date_recommend"
    t.float "date_number"
    t.string "location"
    t.integer "otherFac"
    t.integer "examtypes"
    t.string "rubi"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "kosen_id"
  end

end
