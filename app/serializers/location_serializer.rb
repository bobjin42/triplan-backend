class LocationSerializer < ActiveModel::Serializer
  attributes :id, :api_id, :lat, :lng, :name, :name_suffix, :url, :categories, :perex, :thumbnail_url, :rating, :city_id
  belongs_to :city
end
