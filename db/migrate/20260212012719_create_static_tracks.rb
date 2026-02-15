class CreateStaticTracks < ActiveRecord::Migration[8.0]
  def change
    create_table :static_tracks do |t|
      t.string :tile_id, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.integer :income, null: false
    end
      add_foreign_key :static_tracks, :static_tiles, column: :tile_id, primary_key: "id"
      add_index :static_tracks, [ :tile_id, :from, :to ], unique: true
  end
end
