class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offers
  has_many :bookings

  has_many :booked_offers, through: :offers, source: :bookings


  def fullname
    @user = "#{first_name} #{last_name}"
  end
end
