class ParkEventSerializer < ActiveModel::Serializer
  attributes :id, :name, :facility, :date, :time, :user_id, :park_id, :attending
  belongs_to :park
  belongs_to :user
end
