class Trip < ApplicationRecord
  belongs_to :user
  has_many :plans
  has_many :locations, through: :plans
end
