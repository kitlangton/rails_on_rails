class TripResource < JSONAPI::Resource
  attributes :heading, :direction_id
  has_one :route
  has_many :stops
  has_many :stop_times
end
