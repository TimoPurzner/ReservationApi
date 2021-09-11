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

ActiveRecord::Schema.define(version: 2021_09_10_215232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservation_tables", force: :cascade do |t|
    t.bigint "table_id", null: false
    t.bigint "reservation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_reservation_tables_on_reservation_id"
    t.index ["table_id", "reservation_id"], name: "index_reservation_tables_on_table_id_and_reservation_id", unique: true
    t.index ["table_id"], name: "index_reservation_tables_on_table_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.decimal "person_count"
    t.jsonb "dishes"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string "place_number"
    t.decimal "seats_numbers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservation_tables", "reservations"
  add_foreign_key "reservation_tables", "tables"
end
