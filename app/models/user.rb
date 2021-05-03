class User < ApplicationRecord
  has_many :offer
  has_many :booking

  validates :first_name, :last_name,  presence: true
end
