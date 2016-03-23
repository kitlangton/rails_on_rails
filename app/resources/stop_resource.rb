class StopResource < JSONAPI::Resource
  attributes :name, :latitude, :longitude
  has_many :stop_times
  has_many :trips
  has_many :connecting_stops
end
