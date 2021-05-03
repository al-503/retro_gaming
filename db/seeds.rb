# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Offer.destroy_all
Booking.destroy_all

user1 = User.create(first_name: "Axel", last_name: "Ridray", email: "axel.ridray@sfr.fr", password:"123456")
user2 = User.create(first_name: "Dam's", last_name: "menages", email: "menages.damien@gmail.com", password:"654321")

offer1 = Offer.create(name:"super nitendo 64", description:"super console old school baby", price_per_day: 10.30, user: user2)

booking1 = Booking.create( user: user1,  offer: offer1, start_date: datetime.now, end_date: datetime.now + 2.days, total_price: 20.60, status: "accepted")