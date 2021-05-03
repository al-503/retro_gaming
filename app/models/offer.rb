class Offer < ApplicationRecord
  belongs_to :user
  has_many :booking

  validates :name, :price_per_day, :description,  presence: true
end
