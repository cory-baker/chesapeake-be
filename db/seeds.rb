require 'json'

public_companies = JSON.parse(File.read(Rails.root.join('db/seeds/public_companies.json')), symbolize_names: true)
public_companies.each do |attrs|
  PublicCompany.find_or_create_by!(attrs)
end

tiles = JSON.parse(File.read(Rails.root.join('db/seeds/tiles.json')), symbolize_names: true)
tiles.each do |attrs|
  Tile.find_or_create_by!(attrs)
end

map_hexes = JSON.parse(File.read(Rails.root.join('db/seeds/map_hexes.json')), symbolize_names: true)
map_hexes.each do |attrs|
  MapHex.find_or_create_by!(attrs)
end

tracks = JSON.parse(File.read(Rails.root.join('db/seeds/tracks.json')), symbolize_names: true)
tracks.each do |attrs|
  Track.find_or_create_by!(attrs)
end

stations = JSON.parse(File.read(Rails.root.join('db/seeds/stations.json')), symbolize_names: true)
stations.each do |attrs|
  Station.find_or_create_by!(attrs)
end

trains = JSON.parse(File.read(Rails.root.join('db/seeds/trains.json')), symbolize_names: true)
trains.each do |attrs|
  Train.find_or_create_by!(attrs)
end
