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

galery_1 = Galery.create(user: sabina, name: "Dickon", location: "London")
galery_2 = Galery.create(user: sabina, name: "Da Silva", location: "Paris")
galery_3 = Galery.create(user: sabina, name: "Templon", location: "Paris")
galery_4 = Galery.create(user: sabina, name: "Almine Reich", location: "Berlin")


puts "creating an exhibition"

exhibition_1 = Exhibition.create(name: Faker::Name.name, start_date: "2020.08.23", end_date: "2020.09.30", artist: "Gokhan", user: sabina, galery: galery_1)

exhibition_2 = Exhibition.create(name: Faker::Name.name, start_date: "2020.09.05", end_date: "2020.10.26", artist: "Franz Ackermann", user: sabina, galery: galery_2)

exhibition_3 = Exhibition.create(name: Faker::Name.name, start_date: "2020.04.05", end_date: "2020.08.30", artist: "Chiharu Shiota", user: sabina, galery: galery_3)
exhibition_4 = Exhibition.create(name: Faker::Name.name, start_date: "2019.08.15", end_date: "2019.11.25", artist: "Oda Jaune", user: sabina, galery: galery_3)
exhibition_5 = Exhibition.create(name: Faker::Name.name, start_date: "2020.08.17", end_date: "2020.11.30", artist: "Will Cotton", user: sabina, galery: galery_3)
exhibition_6 = Exhibition.create(name: Faker::Name.name, start_date: "2020.09.07", end_date: "2020.10.27", artist: "Prune Nourry", user: sabina, galery: galery_3)
exhibition_7 = Exhibition.create(name: Faker::Name.name, start_date: "2020.05.18", end_date: "2020.06.30", artist: "Kehinde Wiley", user: sabina, galery: galery_3)
exhibition_8 = Exhibition.create(name: Faker::Name.name, start_date: "2018.08.08", end_date: "2018.10.24", artist: "Rene Wirths", user: sabina, galery: galery_3)
exhibition_9 = Exhibition.create(name: Faker::Name.name, start_date: "0000.00.00", end_date: "0000.00.00", artist: "Valerio Adami", user: sabina, galery: galery_3)

exhibition_10 = Exhibition.create(name: Faker::Name.name, start_date: "2019.07.10", end_date: "2019.12.26", artist: "Billie Zangewa", user: sabina, galery: galery_4)
exhibition_11 = Exhibition.create(name: Faker::Name.name, start_date: "2020.03.17", end_date: "2020.05.15", artist: "Norbert Bisky", user: sabina, galery: galery_4)
exhibition_12 = Exhibition.create(name: Faker::Name.name, start_date: "2020.01.09", end_date: "2020.02.27", artist: "Jan Fabre", user: sabina, galery: galery_4)
exhibition_13 = Exhibition.create(name: Faker::Name.name, start_date: "2020.03.12", end_date: "2020.06.06", artist: "Daniel Dezeuze", user: sabina, galery: galery_4)

puts "creating a showroom"

showroom_1 = Showroom.create(exhibition: exhibition_1, name: Faker::Name, created_at: "2020.08.23" , updated_at: "2020.09.30")

showroom_2 = Showroom.create(exhibition: exhibition_2, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")

showroom_3 = Showroom.create(exhibition: exhibition_3, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_4, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_5, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_6, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_7, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_8, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_3 = Showroom.create(exhibition: exhibition_9, name: Faker::Name, created_at:"0000.00.00" , updated_at: "0000.00.00")

showroom_4 = Showroom.create(exhibition: exhibition_10, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_4 = Showroom.create(exhibition: exhibition_11, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_4 = Showroom.create(exhibition: exhibition_12, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")
showroom_4 = Showroom.create(exhibition: exhibition_13, name: Faker::Name, created_at:"2020.08.22" , updated_at: "2020.08.22")


require "open-uri"

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/5uhzsc2xdnn86bycltks9vxl2jba')
galery_1.photo.attach(io: file, filename: '5uhzsc2xdnn86bycltks9vxl2jba.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/veu3jn4ygmoz5j5ht4foyqg84n8d')
galery_2.photo.attach(io: file, filename: 'veu3jn4ygmoz5j5ht4foyqg84n8d.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/demezcrd0f6n9xcpbe0z82d3z5lb')
galery_3.photo.attach(io: file, filename: 'demezcrd0f6n9xcpbe0z82d3z5lb.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/tyxpyw27qhsf6ce018yqpppd6899')
galery_4.photo.attach(io: file, filename: 'tyxpyw27qhsf6ce018yqpppd6899.png', content_type: 'image/png')


file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/mfzvite5gd5adk6yu79yv3ar1vd8')
exhibition_1.photo.attach(io: file, filename: 'mfzvite5gd5adk6yu79yv3ar1vd8.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/5vv9x4miey1xgqbu7vttdsxy1d41')
exhibition_2.photo.attach(io: file, filename: '5vv9x4miey1xgqbu7vttdsxy1d41', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/s05i2cklvi3m2sw3k6cin75fdthg')
exhibition_3.photo.attach(io: file, filename: 's05i2cklvi3m2sw3k6cin75fdthg.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/49h838diog8aehig9w7v2j6pabpt')
exhibition_4.photo.attach(io: file, filename: '49h838diog8aehig9w7v2j6pabpt.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/gp8z5mhgk462nurqlel2wix443gm')
exhibition_5.photo.attach(io: file, filename: 'gp8z5mhgk462nurqlel2wix443gm.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/hb8cpa3wvxzwwb7mu9j4jtsi3611')
exhibition_6.photo.attach(io: file, filename: 'hb8cpa3wvxzwwb7mu9j4jtsi3611.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/u0hgvwzcqd73ytddas3rni5mqvmg')
exhibition_7.photo.attach(io: file, filename: 'u0hgvwzcqd73ytddas3rni5mqvmg.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/xe0jzvsoyo99zvp041w5sprt64qw')
exhibition_8.photo.attach(io: file, filename: 'xe0jzvsoyo99zvp041w5sprt64qw.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/cwqwg955tsffl9r3u21ug7pgjz48')
exhibition_9.photo.attach(io: file, filename: 'cwqwg955tsffl9r3u21ug7pgjz48.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/a9tlnmnob72c5qako9ia2iw0n691')
exhibition_10.photo.attach(io: file, filename: 'a9tlnmnob72c5qako9ia2iw0n691.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/qu3p4j7mnbo2rvovsuxtpm6ck40s')
exhibition_11.photo.attach(io: file, filename: 'qu3p4j7mnbo2rvovsuxtpm6ck40s.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/zvo238op3f8bsrsym7un06qpfn8v')
exhibition_12.photo.attach(io: file, filename: 'zvo238op3f8bsrsym7un06qpfn8v.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/dwksjntzp/image/upload/kd2pn2satfh7k01bel91rvgy99kf')
exhibition_13.photo.attach(io: file, filename: 'kd2pn2satfh7k01bel91rvgy99kf.png', content_type: 'image/png')