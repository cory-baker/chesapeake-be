class TrackColor < ApplicationRecord
  enum track_color: { green: "green", yellow: "yellow", brown: "brown", gray: "gray", phase: "phase" }
end
