require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating a user"

sabina = User.create(email: Faker::Internet.free_email, password: "AZERTY")
sabina.save

puts "creating a galery"

galery_1 = Galery.create(user: sabina, name: "Da Silva", location: "Paris")
galery_2 = Galery.create(user: sabina, name: "Templon", location: "Paris")
galery_3 = Galery.create(user: sabina, name: "Almine Reich", location: "Berlin")

puts "creating an exhibition"

exhibition_1 = Exhibition.create(name: Faker::Name.name, start_date: "2020.09.05", end_date: "2020.10.26", artist: "Franz Ackermann", user: sabina, galery: galery_1)

exhibition_2 = Exhibition.create(name: Faker::Name.name, start_date: "2020.04.05", end_date: "2020.08.30", artist: "Chiharu Shiota", user: sabina, galery: galery_2)
exhibition_3 = Exhibition.create(name: Faker::Name.name, start_date: "2019.08.15", end_date: "2019.11.25", artist: "Oda Jaune", user: sabina, galery: galery_2)
exhibition_4 = Exhibition.create(name: Faker::Name.name, start_date: "2020.08.17", end_date: "2020.11.30", artist: "Will Cotton", user: sabina, galery: galery_2)
exhibition_5 = Exhibition.create(name: Faker::Name.name, start_date: "2020.09.07", end_date: "2020.10.27", artist: "Prune Nourry", user: sabina, galery: galery_2)
exhibition_6 = Exhibition.create(name: Faker::Name.name, start_date: "2020.05.18", end_date: "2020.06.30", artist: "Kehinde Wiley", user: sabina, galery: galery_2)
exhibition_7 = Exhibition.create(name: Faker::Name.name, start_date: "2018.08.08", end_date: "2018.10.24", artist: "Rene Wirths", user: sabina, galery: galery_2)

exhibition_8 = Exhibition.create(name: Faker::Name.name, start_date: "2019.07.10", end_date: "2019.12.26", artist: "Billie Zangewa", user: sabina, galery: galery_3)
exhibition_9 = Exhibition.create(name: Faker::Name.name, start_date: "2020.03.17", end_date: "2020.05.15", artist: "Norbert Bisky", user: sabina, galery: galery_3)
exhibition_10 = Exhibition.create(name: Faker::Name.name, start_date: "2020.01.09", end_date: "2020.02.27", artist: "Jan Fabre", user: sabina, galery: galery_3)
exhibition_11 = Exhibition.create(name: Faker::Name.name, start_date: "2020.03.12", end_date: "2020.06.06", artist: "Daniel Dezeuze", user: sabina, galery: galery_3)

puts "creating a showroom"

showroom_1 = Showroom.create(exhibition: exhibition_1, name: Faker::Name, galery: galery_1)
showroom_2 = Showroom.create(exhibition: exhibition_2, name: Faker::Name, galery:galery_2)
showroom_3 = Showroom.create(exhibition: exhibition_3, name: Faker::Name, galery: galery_3)



