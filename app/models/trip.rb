class Trip < ApplicationRecord
  belongs_to :route
  has_many :stop_times
  has_many :stops, through: :stop_times
  require 'csv'

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      trip_hash = row.to_hash
      trip_hash.delete "service_id"
      trip_hash['id'] = trip_hash.delete "trip_id"
      trip_hash.delete "block_id"
      trip_hash.delete "shape_id"
      trip_hash['heading'] = trip_hash.delete 'trip_headsign'
      Trip.create!(trip_hash)
    end # end CSV.foreach
  end # end self.import(file)
end
