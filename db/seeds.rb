require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Offer.destroy_all
User.destroy_all

users = []
20.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "123456"
  )
  users << user
  file = File.open("app/assets/images/ret.jpg")
  user.avatar.attach(io: file, filename:"ret.jpg", content_type:'images/png')
  user.save!
end

offer1 = Offer.new(name:"Super Nintendo 64", description:"Super console old school avec Mario Kart", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"11 Place Sainte-Anne Rennes")
file = File.open("db/images/nintendo_64.jpeg")
offer1.photo.attach(io: file, filename: "n_64.jpg", content_type: 'image/png')
offer1.save!

offer2 = Offer.new(name:"Nintendo GameCube", description:"La nostalgie sera présente chef comprend Def Jam fight 4 NewYork", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"24 rue Sainte-Melaine Rennes")
file = File.open("db/images/game_cube.jpeg")
offer2.photo.attach(io: file, filename: "game_cube.jpg", content_type: 'image/png')
offer2.save!

offer3 = Offer.new(name:"PlayStation 2", description:"Si tu veux de la violence à l'état pur retourne avec cette magnifique PS2 GTA San Andreas est inclue !, les vrais savent!", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"Place de la République Rennes")
file = File.open("db/images/ps_2.jpg")
offer3.photo.attach(io: file, filename: "n_64.jpg", content_type: 'image/png')
offer3.save!

offer4 = Offer.new(name:"Xbox", description:"Tape tes meilleurs clutch sur Halo (Halo 1 & 2 fournie)", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"27 Boulevard du colombier Rennes")
file = File.open("db/images/xbox.jpg")
offer4.photo.attach(io: file, filename: "xbox.jpg", content_type: 'image/png')
offer4.save!

offer5 = Offer.new(name:"Game Boy Advance", description:" jeux: Pokémon version Rouge Un jour tu sera le meilleur dresseur! Pokemon!!", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"129 Rue de Fouougères")
file = File.open("db/images/gameboy_advanced.jpeg")
offer5.photo.attach(io: file, filename: "gameboy_advanced.jpg", content_type: 'image/png')
offer5.save!

offer6 = Offer.new(name:"Xbox 360 Slim", description:"Epoque MW2 la meilleur, 1V1 rust! ( Call Of Duty Modern Warfare 2)", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"164 Rue de SAINT MALO Rennes")
file = File.open("db/images/xbox_360.jpeg")
offer6.photo.attach(io: file, filename: "xbox_360.jpg", content_type: 'image/png')
offer6.save!

offer7 = Offer.new(name:"PSone", description:"Les débuts du gaming pour la génération y avec ce bon vieux Rayman", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"1 place d'Erlangen Rennes")
file = File.open("db/images/ps_one.jpeg")
offer7.photo.attach(io: file, filename: "ps_one.jpg", content_type: 'image/png')
offer7.save!

offer8 = Offer.new(name:"Mega Drive II", description:"Ce genre de première émotion de gamer sur mortal Kombat 3", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"66 Mail François Mitterrand Rennes")
file = File.open("db/images/sega_mega_drive.jpeg")
offer8.photo.attach(io: file, filename: "mega_drive.jpg", content_type: 'image/png')
offer8.save!

offer9 = Offer.new(name:"PlayStation Portable", description:"enchaine les combos au calme, dans le tram (Tekken 6)", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"29 Rue Saint-Hélier, Rennes")
file = File.open("db/images/psp.jpeg")
offer9.photo.attach(io: file, filename: "psp.jpg", content_type: 'image/png')
offer9.save!

offer10 = Offer.new(name:"Nintendo DS", description:"Tape tes meilleurs parties sur  Mario Kart DS et Animal crossing", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"1 Rue Vincent Auriol Rennes")
file = File.open("db/images/nintendo_ds.jpg")
offer10.photo.attach(io: file, filename: "nintendo_ds.jpg", content_type: 'image/png')
offer10.save!

offer11 = Offer.new(name:"Wii", description:"De 5 à 95 ans, si tu peux encaisser MadWorld (jeux fournie)", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"1 Rue Vincent Auriol Rennes")
file = File.open("db/images/nintendo_wii.jpeg")
offer11.photo.attach(io: file, filename: "wii.jpg", content_type: 'image/png')
offer11.save!

offer12 = Offer.new(name:"Atari 7800", description:"Pour son iconique PacMan & StreetFighter", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"90 Rue de Châteaugiron Rennes")
file = File.open("db/images/atari.png")
offer12.photo.attach(io: file, filename: "ataro_7800.png", content_type: 'image/png')
offer12.save!

offer13 = Offer.new(name:"Game Boy Pocket", description:"Combien d'entre nous cette console à fait tant sourire sur les paysage de Zelda Oracle of Seasons", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"101 Avenue Henri Fréville Rennes")
file = File.open("db/images/game_boy_pocket.jpeg")
offer13.photo.attach(io: file, filename: "gameboy_pocket.jpg", content_type: 'image/png')
offer13.save!

offer14 = Offer.new(name:"Game Gear", description:"L'une des premières console pocket Fatal Fury Special", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"195 Rue Saint-Malo Rennes")
file = File.open("db/images/game_gear.jpg")
offer14.photo.attach(io: file, filename: "game_gear.jpg", content_type: 'image/png')
offer14.save!

offer15 = Offer.new(name:"Nintendo Switch", description:"Tu va passer des PartyGame endibalé sur Wolfstein", price_per_day: Faker::Number.decimal(l_digits: 2), user: users.sample, address:"88 B Rue de Paris Rennes")
file = File.open("db/images/nintendo_switch.jpeg")
offer15.photo.attach(io: file, filename: "switch.jpg", content_type: 'image/png')
offer15.save!

offers = [offer1, offer2, offer3, offer3, offer4, offer5, offer6, offer7, offer8, offer9, offer10, offer11, offer12, offer13, offer14, offer15]


15.times do
  offer = offers.sample
  start_date = (rand(1..90)).days.ago
  end_date = (rand(1..90)).days.ago
  price_per_day = offer.price_per_day
  booking = Booking.new(
    user: users.sample,
    offer: offer,
    start_date: start_date,
    end_date: end_date,
    total_price: (end_date - start_date + 1).to_i * price_per_day,
    status: "accepted"
  )
  booking.save!
end


