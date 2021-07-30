class ParkEventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :park_id, :facility, :date, :time, :attending
end
