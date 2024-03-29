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

ActiveRecord::Schema.define(version: 2021_04_13_153535) do

  create_table "artifacts", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.integer "star"
    t.integer "artifact_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", charset: "utf8", force: :cascade do |t|
    t.integer "level", default: 1
    t.boolean "ascension", default: false
    t.string "name"
    t.integer "element", default: 0
    t.integer "health_point"
    t.integer "attack"
    t.integer "defense"
    t.integer "ascension_bonus_type", default: 0
    t.float "value"
    t.boolean "percentage", default: false
    t.float "critical_rate"
    t.float "critical_damage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "main_statuses", charset: "utf8", force: :cascade do |t|
    t.string "equipment_type"
    t.bigint "equipment_id"
    t.integer "status_type", default: 0
    t.float "value"
    t.boolean "percentage", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_type", "equipment_id"], name: "index_main_statuses_on_equipment"
  end

  create_table "sub_statuses", charset: "utf8", force: :cascade do |t|
    t.string "equipment_type"
    t.bigint "equipment_id"
    t.integer "status_type", default: 0
    t.float "value"
    t.boolean "percentage", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_type", "equipment_id"], name: "index_sub_statuses_on_equipment"
  end

  create_table "weapons", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.integer "star"
    t.integer "weapon_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
