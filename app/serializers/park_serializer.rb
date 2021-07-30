class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :district, :address, :facility, :indoor, :outdoor, :image
end
