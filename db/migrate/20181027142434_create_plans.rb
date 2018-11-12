class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :trip_id
      t.integer :location_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :location_name
      t.text :note

      t.timestamps
    end
  end
end
