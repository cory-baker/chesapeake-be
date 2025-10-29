class CreateMapPositions < ActiveRecord::Migration[8.0]
  def change
    create_table :map_positions, id: false do |t|
      t.string  :id, null: false, primary_key: true
      t.boolean :water, null: false, default: false
      t.boolean :mountain, null: false, default: false
      t.integer :dits, null: false, default: 0
      t.integer :cities, null: false, default: 0
      t.boolean :placeable, null: false, default: false
      t.string  :tile_id, null: true
      t.integer :rotation, null: false, default: 0
      t.string :letters, null: true, default: nil
    end
    add_foreign_key :map_positions, :tiles, column: :tile_id, primary_key: :id
  end
end
