class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :route, foreign_key: true
      t.string :heading
      t.integer :direction_id

      t.timestamps
    end
  end
end
