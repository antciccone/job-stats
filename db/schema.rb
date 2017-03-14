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

ActiveRecord::Schema.define(version: 20170314224829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applieds", force: :cascade do |t|
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_applieds_on_user_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id", using: :btree
  end

  create_table "homeworks", force: :cascade do |t|
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_homeworks_on_user_id", using: :btree
  end

  create_table "in_people", force: :cascade do |t|
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_in_people_on_user_id", using: :btree
  end

  create_table "phone_interviews", force: :cascade do |t|
    t.string   "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_phone_interviews_on_user_id", using: :btree
  end

  create_table "responses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "user_id"
    t.index ["user_id"], name: "index_responses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
