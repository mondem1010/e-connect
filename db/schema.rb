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

ActiveRecord::Schema.define(version: 2018_12_15_105846) do

  create_table "artist_comments", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "user_id"
    t.integer "star"
    t.text "content"
    t.integer "artist_favorites_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artist_favorites", force: :cascade do |t|
    t.integer "artist_comment_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artist_images", force: :cascade do |t|
    t.integer "user_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.integer "user_id"
    t.string "artist_name"
    t.string "introduction"
    t.string "image_id"
    t.text "url"
    t.integer "average_star"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_entries_on_room_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "event_artists", force: :cascade do |t|
    t.integer "event_id"
    t.integer "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_comments", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.string "comment"
    t.integer "star"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_comment_id"
    t.integer "event_favorites_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_images", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id"
    t.string "event_name"
    t.datetime "date"
    t.string "introduction"
    t.string "image_id"
    t.string "place"
    t.string "performer"
    t.string "avg_star"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.date "birthday"
    t.string "hobby"
    t.integer "room_id"
    t.string "prefecture"
    t.string "gender"
    t.string "introduction"
    t.string "image_id"
    t.string "handle_name"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
