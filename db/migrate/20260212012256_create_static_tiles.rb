class CreateStaticTiles < ActiveRecord::Migration[8.0]
  def change
    create_table :static_tiles, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.integer :remaining_quantity, null: false
      t.column :color, :tile_color, null: false
      t.string :letters
      t.integer :dits, null: false
      t.boolean :city, null: false
    end
  end
end
