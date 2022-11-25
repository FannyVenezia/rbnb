# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Booking.destroy_all
Planet.destroy_all
User.destroy_all

user_1 = User.create(email: 'toto@gmail.com', password: 'tototo', first_name: 'Jacques')
user_2 = User.create(email: 'tata@gmail.com', password: 'tatata', first_name: 'Isabelle')
user_3 = User.create(email: 'titi@gmail.com', password: 'tititi', first_name: 'Jean-Loup')

saturne1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669218472/development/0spz65kkjx73axd354bj05fj9ocz.jpg")
saturne2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669218801/development/ovy6ldg3lugrot9vm0r4aomkj6uq.jpg")

saturne_photos = [
  {io: saturne1, filename: "planet1.jpg", content_type: "image/jpg"},
  { io: saturne2, filename: "planet2.jpg", content_type: "image/jpg"}
]

saturne = Planet.new(name: "Saturne", mass: "29999999", area: "68556674745", solar_system: "Andromède", price: "10 000$", user: user_1)
saturne.photos.attach(saturne_photos)
saturne.save

cérès1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/pexels-photo-9474172_qe890b.webp")
cérès2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/uranus_kqo4ud.jpg")


cérès_photos = [
  {io: cérès1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: cérès2, filename: "planet2.jpg", content_type: "image/jpg"}
]

cérès = Planet.new(name: "Cérès", mass: "2999", area: "685566", solar_system: "Spock", price: "450 000$", user: user_3)
cérès.photos.attach(cérès_photos)
cérès.save

puts "Create new planets..."

leonis1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/pexels-photo-821644_qidgo5.jpg")
leonis2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669383396/earth-soil-creep-moon-lunar-surface-87009_oibe7n.jpg")


leonis_photos = [
  {io: leonis1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: leonis2, filename: "planet2.jpg", content_type: "image/jpg"}
]

leonis = Planet.new(name: "Leonis", mass: "2999", area: "685566", solar_system: "Deono", price: "200 000$", user: user_3)
leonis.photos.attach(leonis_photos)
leonis.save

uranus1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669305211/development/uranus_fmujoj.jpg")
uranus2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296238/development/Mars_Girl_l4mi3w.jpg")

uranus_photos = [
  { io: uranus1, filename: "planet3.jpg", content_type: "image/jpg" },
  { io: uranus2, filename: "planet4.jpg", content_type: "image/jpg" }
]

uranus = Planet.new(name: "Uranus", mass: "29999999", area: "68556674745", solar_system: "Vega", price: "10 000$", user: user_2)
uranus.photos.attach(uranus_photos)
uranus.save

neptune1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669304751/development/Neptune_h69i4t.jpg")
neptune2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296259/development/planet_1_j6ka4b.jpg")


neptune_photos = [
  {io: neptune1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: neptune2, filename: "planet2.jpg", content_type: "image/jpg"}
]

neptune = Planet.new(name: "Neptune", mass: "29999999", area: "68556674745", solar_system: "Spock", price: "10 000$", user: user_3)
neptune.photos.attach(neptune_photos)
neptune.save

hauméa1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669304751/development/Neptune_h69i4t.jpg")
hauméa2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296259/development/planet_1_j6ka4b.jpg")


hauméa_photos = [
  {io: hauméa1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: hauméa2, filename: "planet2.jpg", content_type: "image/jpg"}
]

hauméa = Planet.new(name: "Hauméa", mass: "2999", area: "685566", solar_system: "Spock", price: "10 000$", user: user_3)
hauméa.photos.attach(hauméa_photos)
hauméa.save

makémaké1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669304751/development/Neptune_h69i4t.jpg")
makémaké2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296259/development/planet_1_j6ka4b.jpg")


makémaké_photos = [
  {io: makémaké1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: makémaké2, filename: "planet2.jpg", content_type: "image/jpg"}
]

makémaké = Planet.new(name: "Makémaké", mass: "2999", area: "685566", solar_system: "Spock", price: "10 000$", user: user_3)
makémaké.photos.attach(makémaké_photos)
makémaké.save

lyncis1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669304751/development/Neptune_h69i4t.jpg")
lyncis2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296259/development/planet_1_j6ka4b.jpg")


lyncis_photos = [
  {io: lyncis1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: lyncis2, filename: "planet2.jpg", content_type: "image/jpg"}
]

lyncis = Planet.new(name: "Lyncis", mass: "2999", area: "685566", solar_system: "Spock", price: "10 000$", user: user_3)
lyncis.photos.attach(lyncis_photos)
lyncis.save

delphini1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669304751/development/Neptune_h69i4t.jpg")
delphini2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669296259/development/planet_1_j6ka4b.jpg")


delphini_photos = [
  {io: delphini1, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: delphini2, filename: "planet2.jpg", content_type: "image/jpg"}
]

delphini = Planet.new(name: "Delphini", mass: "2999", area: "685566", solar_system: "Lava", price: "300 000$", user: user_3)
delphini.photos.attach(delphini_photos)
delphini.save

# seed booking

# booking1 = Booking.create(user: User.last, planet: Planet.last, :number_of_visitors 4, start_date: "28/11/2022", end_date: "01/12/2022")
