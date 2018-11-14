class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_code
      t.string :name
      t.string :description
      t.string :wikipedia
      t.string :guide
      t.string :subway_map
      t.string :website
      t.string :img

      t.timestamps
    end
  end
end
