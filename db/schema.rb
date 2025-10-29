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

ActiveRecord::Schema[8.0].define(version: 2025_10_27_023202) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "track_color", ["green", "yellow", "brown", "gray", "phase"]

  create_table "map_positions", id: :string, force: :cascade do |t|
    t.boolean "water", default: false, null: false
    t.boolean "mountain", default: false, null: false
    t.integer "dits", default: 0, null: false
    t.integer "cities", default: 0, null: false
    t.boolean "placeable", default: false, null: false
    t.string "tile_id"
    t.integer "rotation", default: 0, null: false
    t.string "letters"
  end

  create_table "public_companies", id: :string, force: :cascade do |t|
    t.integer "stations", null: false
    t.integer "percent_to_float", null: false
  end

  create_table "tiles", id: :string, force: :cascade do |t|
    t.integer "remaining_quantity", default: 0, null: false
    t.enum "color", null: false, enum_type: "track_color"
    t.string "letters"
  end

  create_table "track_colors", force: :cascade do |t|
    t.enum "color", null: false, enum_type: "track_color"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "tile_id", null: false
    t.string "from", null: false
    t.string "to", null: false
    t.integer "income", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "map_positions", "tiles"
  add_foreign_key "tracks", "tiles"
end
