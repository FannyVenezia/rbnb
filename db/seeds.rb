# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Planet.destroy_all
User.destroy_all

user_1 = User.create(email: 'toto@gmail.com', password: 'tototo')
user_2 = User.create(email: 'tata@gmail.com', password: 'tatata')
user_3 = User.create(email: 'titi@gmail.com', password: 'tititi')

saturne1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669218472/development/0spz65kkjx73axd354bj05fj9ocz.jpg")
saturne2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669218801/development/ovy6ldg3lugrot9vm0r4aomkj6uq.jpg")

saturne_photos = [
  {io: saturne1, filename: "planet1.jpg", content_type: "image/jpg"},
  { io: saturne2, filename: "planet2.jpg", content_type: "image/jpg"}
]

saturne = Planet.new(name: "Saturne", mass: "29999999", area: "68556674745", solar_system: "Andromède", user: user_1)
saturne.photos.attach(saturne_photos)
saturne.save

uranus1 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202826/samples/p3_iobtka.jpg")
uranus2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202826/samples/p3_iobtka.jpg")

uranus_photos = [
  { io: uranus_file, filename: "planet3.jpg", content_type: "image/jpg" },
  { io: uranus_file2, filename: "planet4.jpg", content_type: "image/jpg" }
]

uranus = Planet.new(name: "Uranus", mass: "29999999", area: "68556674745", solar_system: "Vega", user: user_2)
uranus.photos.attach(uranus_photos)
uranus.save

neptune_file3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202847/samples/earth-blue-planet-globe-planet-87651_zsweew.jpg")
neptune_file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202864/samples/planet_1_tfeqto.jpg")

neptune_photos = [
  {io: neptune_file, filename: "planet1.jpg", content_type: "image/jpg"},
  {io: neptune_file3, filename: "planet2.jpg", content_type: "image/jpg"}
]

neptune = Planet.new(name: "Neptune", mass: "29999999", area: "68556674745", solar_system: "Spock", user: user_3)
neptune.photos.attach(neptune_photos)
neptune.save
