class Static::TilesController < ApplicationController
  def index
    @tiles = StaticTile.all
    render json: @tiles
  end
end
