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

ActiveRecord::Schema[7.0].define(version: 2022_05_13_165818) do
  create_table "schedules", force: :cascade do |t|
    t.datetime "scheduleStart"
    t.datetime "scheduleEnd"
    t.integer "shift_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_schedules_on_shift_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "shiftStart"
    t.datetime "shiftEnd"
    t.integer "unavailability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unavailability_id"], name: "index_shifts_on_unavailability_id"
  end

  create_table "unavailabilities", force: :cascade do |t|
    t.datetime "unavailabilityStart"
    t.datetime "unavailability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "userEmail"
    t.string "userPassword"
    t.string "userRole"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "schedules", "shifts"
  add_foreign_key "shifts", "unavailabilities"
end
