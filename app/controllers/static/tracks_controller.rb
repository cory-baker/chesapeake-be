class Static::TracksController < ApplicationController
  def index
    @tracks = StaticTrack.all
    render json: @tracks
  end
end
