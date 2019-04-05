class Parking < ApplicationRecord
  has_many :vehicle
  has_many :entry
end
