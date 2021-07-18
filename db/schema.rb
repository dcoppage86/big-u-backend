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

ActiveRecord::Schema.define(version: 2021_07_16_131902) do

  create_table "categories", force: :cascade do |t|
    t.string "category_1"
    t.string "category_2"
    t.string "category_3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.integer "library_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["library_id"], name: "index_comments_on_library_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "daily_entries", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "completed"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_daily_entries_on_user_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "book_url"
    t.string "image_url"
    t.integer "category_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_libraries_on_category_id"
    t.index ["user_id"], name: "index_libraries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "childs_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.integer "library_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["library_id"], name: "index_users_on_library_id"
  end

  add_foreign_key "daily_entries", "users"
  add_foreign_key "libraries", "categories"
  add_foreign_key "libraries", "users"
end
