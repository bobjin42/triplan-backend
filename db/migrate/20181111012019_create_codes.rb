class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :Codes do |t|
      t.string :city_code
      t.string :city_name
      t.string :country_id

      t.timestamps
    end
  end
end
