class Entry < ApplicationRecord
  belongs_to :rate
  belongs_to :vehicle
  belongs_to :parking
end
