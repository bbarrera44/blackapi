json.extract! entry, :id, :entry_time, :exit_time, :total_time, :price, :vehicle_id, :rate_id, :parking_id, :created_at, :updated_at
json.url entry_url(entry, format: :json)
