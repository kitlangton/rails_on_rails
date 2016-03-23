class StopTime < ApplicationRecord
  belongs_to :stop
  belongs_to :trip

  def self.import(file)
    # count = 0
    CSV.foreach(file, headers: true) do |row|
      # count += 1
      stop_time_hash = row.to_hash
      stop_time_hash.delete "pickup_type"
      stop_time_hash.delete "drop_off_type"
      stop_time_hash.delete "shape_dist_traveled"

      arrival_time = stop_time_hash['arrival_time']
      departure_time = stop_time_hash['departure_time']
      stop_time_hash['arrival_time'] = fix_time(arrival_time)
      stop_time_hash['departure_time'] = fix_time(departure_time)

      StopTime.create!(stop_time_hash)
      # return if count == 10
    end # end CSV.foreach
  end # end self.import(file)

  def self.fix_time(time)
    hours, minutes, seconds = time.split(':')
    if hours.to_i > 24
      "#{hours.to_i - 24}:#{minutes}:#{seconds}"
    else
      time
    end
  end
end
