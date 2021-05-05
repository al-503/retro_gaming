class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,

  has_many :offers
  has_many :bookings


  def fullname
    @user = "#{first_name} #{last_name}"
  end
end
