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

ActiveRecord::Schema[7.1].define(version: 2024_01_09_170007) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "biblio_author_books", force: :cascade do |t|
    t.bigint "biblio_author_id", null: false
    t.bigint "biblio_book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biblio_author_id"], name: "index_biblio_author_books_on_biblio_author_id"
    t.index ["biblio_book_id"], name: "index_biblio_author_books_on_biblio_book_id"
  end

  create_table "biblio_authors", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biblio_books", force: :cascade do |t|
    t.string "title", null: false
    t.string "google_api_id"
    t.text "description"
    t.integer "pages_count"
    t.string "thumbnail"
    t.string "preview_link"
    t.datetime "published_date"
    t.integer "average_rating"
    t.integer "ratings_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biblio_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biblio_category_books", force: :cascade do |t|
    t.bigint "biblio_category_id", null: false
    t.bigint "biblio_book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biblio_book_id"], name: "index_biblio_category_books_on_biblio_book_id"
    t.index ["biblio_category_id"], name: "index_biblio_category_books_on_biblio_category_id"
  end

  create_table "biblio_publishers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biblio_readings", force: :cascade do |t|
    t.datetime "started_at"
    t.datetime "finished_at"
    t.bigint "biblio_shelf_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biblio_shelf_id"], name: "index_biblio_readings_on_biblio_shelf_id"
  end

  create_table "biblio_shelves", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "biblio_book_id", null: false
    t.text "comments"
    t.string "tags", default: [], null: false, array: true
    t.string "book_type"
    t.string "status", null: false
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biblio_book_id"], name: "index_biblio_shelves_on_biblio_book_id"
    t.index ["user_id"], name: "index_biblio_shelves_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "biblio_author_books", "biblio_authors"
  add_foreign_key "biblio_author_books", "biblio_books"
  add_foreign_key "biblio_category_books", "biblio_books"
  add_foreign_key "biblio_category_books", "biblio_categories"
  add_foreign_key "biblio_readings", "biblio_shelves"
  add_foreign_key "biblio_shelves", "biblio_books"
  add_foreign_key "biblio_shelves", "users"
end
