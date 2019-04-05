class ParkingSerializer < ActiveModel::Serializer
  has_many :vehicles
  has_many :entry

  attributes :id, :name, :adress, :phone
end
