class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.string :trip_title

      t.timestamps
    end
  end
end
