class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :park_events
  has_many :users, through: :park_events
end
