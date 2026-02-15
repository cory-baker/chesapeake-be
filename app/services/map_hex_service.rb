class MapHexService
  def self.all_with_tiles
    StaticMapHex.includes(:tile).all
  end
end
