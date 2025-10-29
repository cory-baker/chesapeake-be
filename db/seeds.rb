# Seed data for public_companies table
[
  { id: 'PLE', stations: 3, percent_to_float: 30 },
  { id: 'PRR', stations: 4, percent_to_float: 20 },
  { id: 'SRR', stations: 2, percent_to_float: 40 },
  { id: 'B&O', stations: 3, percent_to_float: 30 },
  { id: 'C&A', stations: 2, percent_to_float: 60 },
  { id: 'C&O', stations: 4, percent_to_float: 60 },
  { id: 'LV', stations: 2, percent_to_float: 60 },
  { id: 'N&W', stations: 3, percent_to_float: 60 }
].each do |attrs|
  PublicCompany.find_or_create_by!(id: attrs[:id]) do |company|
    company.stations = attrs[:stations]
    company.percent_to_float = attrs[:percent_to_float]
  end
end


[
  { id: 'A3_static', remaining_quantity: 0, color: 'phase' },
  { id: 'A7_static', remaining_quantity: 0, color: 'phase' },
  { id: 'A13_static', remaining_quantity: 0, color: 'phase' },
  { id: 'B2_static', remaining_quantity: 0, color: 'phase' },
  { id: 'B14_static', remaining_quantity: 0, color: 'phase' },
  { id: 'E1_static', remaining_quantity: 0, color: 'phase' },
  { id: 'F14_static', remaining_quantity: 0, color: 'phase' },
   { id: 'G1_static', remaining_quantity: 0, color: 'phase' },
  { id: 'H6_initial', remaining_quantity: 0, color: 'yellow', letters: 'OO' },
  { id: 'H14_static', remaining_quantity: 0, color: 'phase' },
  { id: 'I9_static', remaining_quantity: 0, color: 'phase' },
  { id: 'J4_initial', remaining_quantity: 0, color: 'yellow', letters: 'OO' },
  { id: 'K1_static', remaining_quantity: 0, color: 'phase' },
  { id: 'K7_static', remaining_quantity: 0, color: 'phase' },
  { id: 'L2_static', remaining_quantity: 0, color: 'phase' }
].each do |attrs|
  Tile.find_or_create_by!(id: attrs[:id]) do |tile|
    tile.remaining_quantity = attrs[:remaining_quantity]
    tile.color = attrs[:color]
  end
end

[
  { id: 'A-3', water: false, mountain: false, dits: 0, cities: 1, placeable: false, tile_id: 'A3_static', rotation: 0 },
  { id: 'A-7', water: false, mountain: false, dits: 0, cities: 1, placeable: false, tile_id: 'A7_static', rotation: 0 },
  { id: 'A-13', water: false, mountain: false, dits: 0, cities: 1, placeable: false, tile_id: 'A13_static', rotation: 0 },
  { id: 'B-2', water: false, mountain: false, dits: 0, cities: 1, placeable: false, tile_id: 'B2_static', rotation: 0 },
  { id: 'B-4', water: false, mountain: false, dits: 2, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'B-6', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'B-8', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'B-10', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'B-12', water: false, mountain: true, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'B-14', water: false, mountain: false, cities: 1, placeable: false, tile_id: nil, rotation: 0 },
  { id: 'C-3', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'C-5', water: false, mountain: false, cities: 1, placeable: false, tile_id: nil, rotation: 0 },
  { id: 'C-7', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'C-9', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'C-11', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'C-13', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-2', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-4', water: false, mountain: true, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-6', water: false, mountain: true, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-8', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-10', water: false, mountain: true, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'D-12', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'E-1', water: false, mountain: false, placeable: false, tile_id: 'E1_static', rotation: 0 },
  { id: 'E-3', water: false, mountain: false, cities: 1, placeable: false, tile_id: nil, rotation: 0 },
  { id: 'E-5', water: false, mountain: true, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'E-7', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'E-9', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'E-11', water: false, mountain: false, dits: 1, placeable: false, tile_id: nil, rotation: 0 },
  { id: 'E-13', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-2', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-4', water: false, mountain: false, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-6', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-8', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0, letters: 'DC' },
  { id: 'F-10', water: true, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-12', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'F-14', water: false, mountain: false, placeable: false, tile_id: 'F14_static', rotation: 0 },
  { id: 'G-1', water: false, mountain: false, placeable: false, tile_id: 'G1_static', rotation: 0 },
  { id: 'G-3', water: false, mountain: false, dits: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'G-5', water: false, mountain: false, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'G-7', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'G-9', water: true, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'G-11', water: true, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'G-13', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'H-2', water: false, mountain: false, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'H-4', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'H-6', water: true, mountain: false, cities: 2, placeable: true, tile_id: 'H6_initial', rotation: 0, letters: 'OO' },
  { id: 'H-12', water: true, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'H-14', water: false, mountain: false, placeable: false, tile_id: 'H14_static', rotation: 0 },
  { id: 'I-3', water: false, mountain: false, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'I-5', water: false, mountain: false, dits: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'I-7', water: false, mountain: false, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'I-9', water: false, mountain: false, dits: 1, placeable: false, tile_id: 'I9_static', rotation: 0 },
  { id: 'J-2', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'J-4', water: false, mountain: false, cities: 2, placeable: true, tile_id: 'J4_initial', rotation: 0, letters: 'OO' },
  { id: 'J-6', water: false, mountain: false, cities: 1, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'J-8', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'J-10', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'K-1', water: false, mountain: false, dits: 1, placeable: false, tile_id: 'K1_static', rotation: 0 },
  { id: 'K-3', water: false, mountain: false, dits: 2, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'K-5', water: false, mountain: false, dits: 2, placeable: true, tile_id: nil, rotation: 0 },
  { id: 'K-7', water: false, mountain: false, placeable: false, tile_id: 'K7_static', rotation: 0 },
  { id: 'L-2', water: false, mountain: false, cities: 1, placeable: false, tile_id: 'L2_static', rotation: 0 },
  { id: 'L-4', water: false, mountain: false, dits: 0, cities: 0, placeable: true, tile_id: nil, rotation: 0 }
].each do |attrs|
  MapPosition.find_or_create_by!(id: attrs[:id]) do |position|
    position.water = attrs[:water]
    position.mountain = attrs[:mountain]
    position.dits = attrs[:dits] || 0
    position.cities = attrs[:cities] || 0
    position.placeable = attrs[:placeable]
    position.tile_id = attrs[:tile_id]
    position.rotation = attrs[:rotation]
  end
end

[
  { tile_id: 'A3_static', from: 'SE', to: 'PLE', income: -1 },
  { tile_id: 'A7_static', from: 'S', to: 'CITY', income: -1 },
  { tile_id: 'A13_static', from: 'NE', to: 'CITY', income: -1 },
  { tile_id: 'B2_static', from: 'S', to: 'CITY', income: -1 },
  { tile_id: 'B14_static', from: 'NE', to: 'CITY', income: -1 },
  { tile_id: 'B14_static', from: 'N', to: 'CITY', income: -1 },
  { tile_id: 'E1_static', from: 'SW', to: 'SE', income: 0 },
  { tile_id: 'E1_static', from: 'SE', to: 'SW', income: -1 },
  { tile_id: 'F14_static', from: 'SW', to: 'SE', income: 0 },
  { tile_id: 'F14_static', from: 'SE', to: 'SW', income: 0 },
  { tile_id: 'G1_static', from: 'SW', to: 'S', income: 0 },
  { tile_id: 'G1_static', from: 'SW', to: 'SE', income: 0 },
  { tile_id: 'H6_initial', from: 'NE', to: 'CITY', income: 30 },
  { tile_id: 'H6_initial', from: 'SE', to: 'B&O', income: 30 },
  { tile_id: 'H14_static', from: 'NW', to: 'CITY', income: -1 },
  { tile_id: 'I9_static', from: 'N', to: 'SE', income: 30 },
  { tile_id: 'I9_static', from: 'SE', to: 'N', income: 30 },
  { tile_id: 'J4_initial', from: 'N', to: 'CITY', income: 30 },
  { tile_id: 'J4_initial', from: 'S', to: 'CITY', income: 30 },
  { tile_id: 'K1_static', from: 'SW', to: 'S', income: 30 },
  { tile_id: 'K1_static', from: 'S', to: 'SW', income: 30 },
  { tile_id: 'K7_static', from: 'N', to: 'NW', income: 0 },
  { tile_id: 'K7_static', from: 'NW', to: 'N', income: 0 },
  { tile_id: 'L2_static', from: 'S', to: 'CITY', income: -1 },
  { tile_id: 'L2_static', from: 'SW', to: 'CITY', income: -1 }
].each do |attrs|
  Track.find_or_create_by!(tile_id: attrs[:tile_id], from: attrs[:from], to: attrs[:to]) do |track|
    track.income = attrs[:income]
  end
end
