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

ActiveRecord::Schema.define(version: 2020_12_02_000045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_answers", force: :cascade do |t|
    t.bigint "replay_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_answers_on_category_id"
    t.index ["replay_id"], name: "index_category_answers_on_replay_id"
  end

  create_table "factors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fields", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_fields", force: :cascade do |t|
    t.text "detail"
    t.bigint "group_id", null: false
    t.bigint "field_id", null: false
    t.string "poll_header_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["field_id"], name: "index_group_fields_on_field_id"
    t.index ["group_id"], name: "index_group_fields_on_group_id"
    t.index ["poll_header_id"], name: "index_group_fields_on_poll_header_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "indicators", force: :cascade do |t|
    t.string "description"
    t.bigint "factor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["factor_id"], name: "index_indicators_on_factor_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.integer "totalPopulation"
    t.integer "sample"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poll_bodies", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "category_replay_id", null: false
    t.string "poll_header_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_replay_id"], name: "index_poll_bodies_on_category_replay_id"
    t.index ["poll_header_id"], name: "index_poll_bodies_on_poll_header_id"
    t.index ["question_id"], name: "index_poll_bodies_on_question_id"
  end

  create_table "poll_headers", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.integer "age"
    t.date "date"
    t.bigint "gender_id", null: false
    t.bigint "institution_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gender_id"], name: "index_poll_headers_on_gender_id"
    t.index ["id"], name: "index_poll_headers_on_id", unique: true
    t.index ["institution_id"], name: "index_poll_headers_on_institution_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "detail"
    t.bigint "category_id", null: false
    t.bigint "indicator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["indicator_id"], name: "index_questions_on_indicator_id"
  end

  add_foreign_key "category_answers", "answers"
  add_foreign_key "category_answers", "categories"
  add_foreign_key "group_fields", "fields"
  add_foreign_key "group_fields", "groups"
  add_foreign_key "group_fields", "poll_headers"
  add_foreign_key "indicators", "factors"
  add_foreign_key "poll_bodies", "category_answers"
  add_foreign_key "poll_bodies", "poll_headers"
  add_foreign_key "poll_bodies", "questions"
  add_foreign_key "poll_headers", "genders"
  add_foreign_key "poll_headers", "institutions"
  add_foreign_key "questions", "categories"
  add_foreign_key "questions", "indicators"
end
