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

ActiveRecord::Schema.define(version: 2020_12_23_082414) do

  create_table "event_participations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.boolean "is_event_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.date "end_at", null: false
    t.date "start_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "url1"
    t.text "url2"
    t.text "url3"
    t.string "url1_description"
    t.string "url2_description"
    t.string "url3_description"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_genre_infos", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "genre_id", null: false
    t.integer "priority", null: false
    t.boolean "is_valid", default: false
    t.boolean "is_genre_leader", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id", "user_id", "priority", "is_valid"], name: "unique_index", unique: true
    t.index ["genre_id", "user_id"], name: "index_user_genre_infos_on_genre_id_and_user_id", unique: true
    t.index ["genre_id"], name: "index_user_genre_infos_on_genre_id"
    t.index ["user_id"], name: "index_user_genre_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "student_number", null: false
    t.integer "term", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.boolean "is_active", default: true
    t.boolean "is_admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["student_number"], name: "index_users_on_student_number", unique: true
    t.index ["term"], name: "index_users_on_term"
  end

end
