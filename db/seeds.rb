# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'httparty'
require_relative "./city_data.rb"


# response = HTTParty.get('http://localhost:4001/citiesCode')

citydata["citiesCode"].each do |citycode|
  Code.create(city_code: citycode["id"], city_name: citycode["name"], country_id: citycode["country_id"])
end
