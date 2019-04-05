class EntrySerializer < ActiveModel::Serializer
  belongs_to :rate
  belongs_to :vehicle
  belongs_to :parking

  attributes :id, :entry_time, :exit_time, :total_time, :price, :vehicle_id, :rate_id, :parking_id

end
