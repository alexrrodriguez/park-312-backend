class Park < ApplicationRecord
  has_many :park_events
  has_many :users, through: :park_events
end
