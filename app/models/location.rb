class Location < ApplicationRecord
  has_many :plans
  has_many :trips, through: :plans
  has_many :users, through: :trips
end
