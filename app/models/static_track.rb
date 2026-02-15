class StaticTrack < ApplicationRecord
  self.table_name = "static_tracks"

  belongs_to :tile, class_name: "StaticTile", foreign_key: "tile_id", primary_key: "id"
end
