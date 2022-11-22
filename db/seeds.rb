# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Planet.destroy_all
User.destroy_all

user_1 = User.create(email: 'toto@gmail.com', password: 'tototo')
user_2 = User.create(email: 'tata@gmail.com', password: 'tatata')
user_3 = User.create(email: 'titi@gmail.com', password: 'tititi')

Planet.create(name: "saturne", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
Planet.create(name: "uranus", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_2)
Planet.create(name: "neptune", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_3)
# Planet.create(name: "mars", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
# Planet.create(name: "pluton", mass: "29999999", area: "68556674745", solar_system: "solar", user: user_1)
