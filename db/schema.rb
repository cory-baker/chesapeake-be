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

ActiveRecord::Schema[8.0].define(version: 2026_02_12_022053) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "tile_color", ["green", "yellow", "brown", "gray", "phase"]

  create_table "static_map_hexes", id: :string, force: :cascade do |t|
    t.string "column", null: false
    t.string "row", null: false
    t.boolean "water", null: false
    t.boolean "mountain", null: false
    t.integer "dits", null: false
    t.boolean "city", null: false
    t.boolean "placeable", null: false
    t.string "tile_id"
    t.string "letters"
    t.integer "rotations", null: false
    t.string "name"
  end

  create_table "static_public_companies", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.integer "stock_price"
  end

  create_table "static_stations", force: :cascade do |t|
    t.string "company_id", null: false
    t.integer "price", null: false
    t.string "hex_id", null: false
    t.string "direction"
  end

  create_table "static_tiles", id: :string, force: :cascade do |t|
    t.integer "remaining_quantity", null: false
    t.enum "color", null: false, enum_type: "tile_color"
    t.string "letters"
    t.integer "dits", null: false
    t.boolean "city", null: false
  end

  create_table "static_tracks", force: :cascade do |t|
    t.string "tile_id", null: false
    t.string "from", null: false
    t.string "to", null: false
    t.integer "income", null: false
    t.index ["tile_id", "from", "to"], name: "index_static_tracks_on_tile_id_and_from_and_to", unique: true
  end

  create_table "static_trains", id: :string, force: :cascade do |t|
    t.integer "cost", null: false
    t.integer "quantity", null: false
    t.integer "rusts"
    t.integer "upgrade_cost", null: false
    t.integer "stops", null: false
  end

  create_table "tile_colors", force: :cascade do |t|
    t.enum "color", null: false, enum_type: "tile_color"
  end

  add_foreign_key "static_map_hexes", "static_tiles", column: "tile_id"
  add_foreign_key "static_stations", "static_map_hexes", column: "hex_id"
  add_foreign_key "static_stations", "static_public_companies", column: "company_id"
  add_foreign_key "static_tracks", "static_tiles", column: "tile_id"
end
