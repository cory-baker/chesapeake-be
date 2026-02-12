class MapPositionsController < ApplicationController
  def index
    render json: MapHex.all
  end
end
