class MapPositionsController < ApplicationController
  def index
    render json: MapPosition.all
  end
end
