class CreateStaticStations < ActiveRecord::Migration[8.0]
  def change
    create_table :static_stations do |t|
      t.string :company_id, null: false
      t.integer :price, null: false
      t.string :hex_id
      t.string :direction
    end
    add_foreign_key :static_stations, :static_public_companies, column: :company_id, primary_key: "id"
    add_foreign_key :static_stations, :static_map_hexes, column: :hex_id, primary_key: "id"
  end
end
