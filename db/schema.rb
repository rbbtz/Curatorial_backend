# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_06_195352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artwork_contents", force: :cascade do |t|
    t.bigint "content_id", null: false
    t.bigint "artwork_id", null: false
    t.float "score"
    t.float "confidence"
    t.float "topicality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_artwork_contents_on_artwork_id"
    t.index ["content_id"], name: "index_artwork_contents_on_content_id"
  end

  create_table "artwork_exhibitions", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "exhibition_id", null: false
    t.index ["artwork_id"], name: "index_artwork_exhibitions_on_artwork_id"
    t.index ["exhibition_id"], name: "index_artwork_exhibitions_on_exhibition_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "artist"
    t.string "title"
    t.string "medium"
    t.text "description"
    t.string "collection"
    t.string "location"
    t.string "image_url"
    t.string "image_copyright"
    t.string "permalink"
    t.string "origin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exhibition_likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "exhibition_id", null: false
    t.index ["exhibition_id"], name: "index_exhibition_likes_on_exhibition_id"
    t.index ["user_id"], name: "index_exhibition_likes_on_user_id"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "summary"
    t.string "title"
    t.text "description"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_exhibitions_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.text "biography"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "artwork_contents", "artworks"
  add_foreign_key "artwork_contents", "contents"
  add_foreign_key "artwork_exhibitions", "artworks"
  add_foreign_key "artwork_exhibitions", "exhibitions"
  add_foreign_key "exhibition_likes", "exhibitions"
  add_foreign_key "exhibition_likes", "users"
  add_foreign_key "exhibitions", "users"
end
