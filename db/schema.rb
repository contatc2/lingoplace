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

ActiveRecord::Schema.define(version: 2019_02_26_134622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interpreter_languages", force: :cascade do |t|
    t.bigint "language_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_interpreter_languages_on_language_id"
    t.index ["user_id"], name: "index_interpreter_languages_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "language"
    t.date "start_date"
    t.date "end_date"
    t.date "date_posted"
    t.integer "budget"
    t.string "status"
    t.bigint "user_id"
    t.bigint "interpreter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interpreter_id"], name: "index_jobs_on_interpreter_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.integer "stars"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_reviews_on_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "interpreter_languages", "languages"
  add_foreign_key "interpreter_languages", "users"
  add_foreign_key "jobs", "users"
  add_foreign_key "jobs", "users", column: "interpreter_id"
  add_foreign_key "reviews", "jobs"
end
