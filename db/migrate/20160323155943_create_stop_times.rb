class CreateStopTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :stop_times do |t|
      t.references :stop, foreign_key: true
      t.references :trip, foreign_key: true
      t.time :arrival_time
      t.time :departure_time
      t.integer :stop_sequence

      t.timestamps
    end
  end
end
