class MapPosition < ApplicationRecord
  belongs_to :tile, optional: true
end
