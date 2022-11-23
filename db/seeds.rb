# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Planet.destroy_all

user_1 = User.create(email: 'toto@gmail.com', password: 'tototo')
Planet.create(name: "Saturne", mass: "4354534", area: "34354556", user: user_1)
