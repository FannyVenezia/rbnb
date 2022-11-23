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

# Planet.create(name: "saturne", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
# Planet.create(name: "uranus", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_2)
# Planet.create(name: "neptune", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_3)
# Planet.create(name: "mars", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
# Planet.create(name: "pluton", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)

saturne_file2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202835/samples/p4_ffmtkz.jpg")
saturne_file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202811/samples/Mars_Girl_etkjzj.jpg")

saturne_photos = [
  {
    io: saturne_file, filename: "planet1.png", content_type: "image/png",
    io: saturne_file2, filename: "planet2.png", content_type: "image/png",
  }
]

saturne = Planet.new(name: "saturne", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
saturne.photos.attach(saturne_photos)
saturne.save




uranus_file2 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202826/samples/p3_iobtka.jpg")
uranus_file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202826/samples/p3_iobtka.jpg")

uranus_photos = [
  {
    io: uranus_file, filename: "planet3.png", content_type: "image/png",
    io: uranus_file2, filename: "planet4.png", content_type: "image/png",
  }
]

uranus = Planet.new(name: "uranus", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_2)
uranus.photos.attach(uranus_photos)
uranus.save





neptune_file3 = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202847/samples/earth-blue-planet-globe-planet-87651_zsweew.jpg")
neptune_file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202864/samples/planet_1_tfeqto.jpg")

neptune_photos = [
  {
    io: neptune_file, filename: "planet1.png", content_type: "image/png",
    io: neptune_file3, filename: "planet2.png", content_type: "image/png",
  }
]

neptune = Planet.new(name: "neptune", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_3)
neptune.photos.attach(neptune_photos)
neptune.save







# file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202835/samples/p4_ffmtkz.jpg")
# Planet = Planet.new(title: "Planet-uranus", body: "A great Trip")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save

# file = URI.open("https://res.cloudinary.com/dsas0wiz2/image/upload/v1669202864/samples/planet_1_tfeqto.jpg")
# Planet = Planet.new(title: "Planet-neptune", body: "A wonderful experience")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save
