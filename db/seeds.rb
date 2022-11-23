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


Planet.create(name: 'Klingon', mass: '2000', area: '1000', solar_system: 'Andromede', user: user_1)
Planet.create(name: 'Hobbit', mass: '2000', area: '1000', solar_system: 'Vega', user: user_2)
