class CitySerializer < ActiveModel::Serializer
  attributes :id, :city_code, :name, :description, :wikipedia, :guide, :subway_map, :website, :img
  has_many :locations
end
