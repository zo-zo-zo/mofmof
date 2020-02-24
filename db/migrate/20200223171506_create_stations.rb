class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :name
      t.integer :time
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
