class StaticTile < ApplicationRecord
  self.table_name = "static_tiles"

  enum :color, {
    green: "green",
    yellow: "yellow",
    brown: "brown",
    gray: "gray",
    phase: "phase"
  }, suffix: true

  has_many :tracks, class_name: "StaticTrack", foreign_key: "tile_id", primary_key: "id"
  has_many :hexes, class_name: "StaticMapHex", foreign_key: "tile_id", primary_key: "id"
end
