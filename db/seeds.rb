# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'httparty'

# response = HTTParty.get('http://localhost:4000/places')
#
# response.each do |location|
#   Location.create(api_id: location["id"], lat: location["location"]["lat"], lng: location["location"]["lng"], name: location["name"], name_suffix: location["name_suffix"], url: location["url"], categories: location["categories"], perex: location["perex"], thumbnail_url: location["thumbnail_url"], rating: location["rating"])
# end
#
# puts Allcode.get_city_code.first

response = HTTParty.get('http://localhost:4001/citiesCode')

response.each do |citycode|
  Code.create(city_code: citycode["id"], city_name: citycode["name"], country_id: citycode["country_id"])
end
