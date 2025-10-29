class CreateTiles < ActiveRecord::Migration[8.0]
  def change
    create_table :tiles, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.integer :remaining_quantity, null: false, default: 0
      t.column :color, :track_color, null: false
      t.string :letters, null: true, default: nil
    end
  end
end
