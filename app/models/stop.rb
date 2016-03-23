class Stop < ApplicationRecord
  has_many :stop_times
  has_many :trips, through: :stop_times
  has_many :connecting_stops, -> (stop) { where.not(id: stop.id)}, through: :trips, source: :stops

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      stop_hash = row.to_hash
      stop_hash['id'] = stop_hash.delete "stop_id"
      stop_hash.delete "stop_desc"
      stop_hash['name'] = stop_hash.delete 'stop_name'
      stop_hash['latitude'] = stop_hash.delete 'stop_lat'
      stop_hash['longitude'] = stop_hash.delete 'stop_lon'
      Stop.create!(stop_hash)
    end # end CSV.foreach
  end # end self.import(file)
end
