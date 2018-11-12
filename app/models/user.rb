class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  has_many :trips
  has_many :plans, through: :trips
  has_many :locations, through: :trips
end
