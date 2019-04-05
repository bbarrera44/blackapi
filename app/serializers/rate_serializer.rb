class RateSerializer < ActiveModel::Serializer
  has_many :entry
  attributes :id, :name, :value, :date_begin, :date_end
end
