class CreateTracks < ActiveRecord::Migration[8.0]
  def change
    create_table :tracks do |t|
      t.string :tile_id, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.integer :income, null: false, default: 0

      t.timestamps
    end
    add_foreign_key :tracks, :tiles, column: :tile_id, primary_key: :id
  end
end
