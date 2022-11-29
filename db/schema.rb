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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_204711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slot_categories", force: :cascade do |t|
    t.bigint "slot_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_slot_categories_on_category_id"
    t.index ["slot_id"], name: "index_slot_categories_on_slot_id"
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "student_id"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.boolean "remote", default: true, null: false
    t.text "review_content"
    t.integer "rating"
    t.boolean "open", default: true, null: false
    t.text "student_content"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_slots_on_student_id"
    t.index ["user_id"], name: "index_slots_on_user_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_user_categories_on_category_id"
    t.index ["user_id"], name: "index_user_categories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "about"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "slot_categories", "categories"
  add_foreign_key "slot_categories", "slots"
  add_foreign_key "slots", "users"
  add_foreign_key "slots", "users", column: "student_id"
  add_foreign_key "user_categories", "categories"
  add_foreign_key "user_categories", "users"
end
