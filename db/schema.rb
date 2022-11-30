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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_203508) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_categories", force: :cascade do |t|
    t.bigint "appointment_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointment_categories_on_appointment_id"
    t.index ["category_id"], name: "index_appointment_categories_on_category_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "rating"
    t.text "review_content"
    t.text "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "teacher_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "remote"
    t.index ["teacher_id"], name: "index_appointments_on_teacher_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_categories", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_teacher_categories_on_category_id"
    t.index ["teacher_id"], name: "index_teacher_categories_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.boolean "sunday"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "price"
    t.boolean "remote"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "in_person"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
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

  add_foreign_key "appointment_categories", "appointments"
  add_foreign_key "appointment_categories", "categories"
  add_foreign_key "appointments", "teachers"
  add_foreign_key "appointments", "users"
  add_foreign_key "teacher_categories", "categories"
  add_foreign_key "teacher_categories", "teachers"
  add_foreign_key "teachers", "users"
  add_foreign_key "user_categories", "categories"
  add_foreign_key "user_categories", "users"
end
