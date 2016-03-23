class StopTimeResource < JSONAPI::Resource
  attributes :arrival_time, :departure_time, :stop_sequence
  has_one :stop
  has_one :trip
end
