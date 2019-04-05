class VehicleSerializer < ActiveModel::Serializer
  has_many :entry
  belongs_to :parking
  attributes :id, :plate, :parking_id
end
