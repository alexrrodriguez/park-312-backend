class ParkEvent < ApplicationRecord
  belongs_to :park
  belongs_to :user
end
