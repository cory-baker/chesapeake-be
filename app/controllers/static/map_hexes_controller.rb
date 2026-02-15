class Static::MapHexesController < ApplicationController
  def index
    @map_hexes = MapHexService.all_with_tiles
    render json: @map_hexes, include: :tile
  end
end
