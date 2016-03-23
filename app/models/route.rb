class Route < ApplicationRecord
  has_many :routes

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      route_hash = row.to_hash
      route_hash['id'] = route_hash.delete "route_id"
      route_hash.delete "route_short_name"
      route_hash.delete "route_type"
      route_hash.delete "route_url"
      route_hash.delete "route_color"
      route_hash['name'] = route_hash.delete 'route_long_name'
      route_hash['agency'] = route_hash.delete 'agency_id'
      Route.create!(route_hash)
    end # end CSV.foreach
  end # end self.import(file)
end
