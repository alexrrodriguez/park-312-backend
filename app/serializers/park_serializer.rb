class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :district, :address, :facility, :indoor, :outdoor, :image, :hours
  has_many :park_events
  has_many :users, through: :park_events
end
