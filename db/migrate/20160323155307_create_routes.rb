class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :agency
      t.string :name

      t.timestamps
    end
  end
end
