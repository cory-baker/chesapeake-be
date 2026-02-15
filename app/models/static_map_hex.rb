class StaticMapHex < ApplicationRecord
  self.table_name = "static_map_hexes"

  belongs_to :tile, class_name: "StaticTile", foreign_key: "tile_id", primary_key: "id", optional: true
  has_many :stations, class_name: "StaticStation", foreign_key: "hex_id", primary_key: "id"
end
