class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, :price_per_day, :description, presence: true
end
