class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :api_id
      t.string :lat
      t.string :lng
      t.string :name
      t.string :name_suffix
      t.string :url
      t.string :categories, array: true, default: []
      t.string :perex
      t.string :thumbnail_url
      t.string :rating

      t.timestamps
    end
  end
end
