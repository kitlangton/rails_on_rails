namespace :import do
  desc "Import NJ Transit CSV"
  task data: :environment do
    # Clean up
    StopTime.destroy_all
    Stop.destroy_all
    Trip.destroy_all
    Route.destroy_all

    # Recreate
    Route.import('transit/routes.csv')
    Trip.import('transit/trips.csv')
    Stop.import('transit/stops.csv')
    StopTime.import('transit/stop_times.csv')
  end

end
