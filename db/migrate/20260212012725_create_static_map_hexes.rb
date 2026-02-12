class CreateStaticMapHexes < ActiveRecord::Migration[8.0]
  def change
    create_table :static_map_hexes, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.string :column, null: false
      t.string :row, null: false
      t.boolean :water, null: false
      t.boolean :mountain, null: false
      t.integer :dits, null: false
      t.boolean :city, null: false
      t.boolean :placeable, null: false
      t.string :tile_id
      t.string :letters
      t.integer :rotations, null: false
      t.string :name
    end
    add_foreign_key :static_map_hexes, :static_tiles, column: :tile_id, primary_key: "id"
  end
end
