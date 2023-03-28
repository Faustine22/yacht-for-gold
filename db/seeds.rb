# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Yacht.destroy_all
User.destroy_all

user1 = User.create(email:"evan@gmail.com", password:"123456", first_name:"jean", last_name:"touseul")
puts "User created"
Yacht.create(name:"Myriam", size: 50, price_per_day: 500000, user: user1)
Yacht.create(name:"Evan", size:30, price_per_day: 100000, user: user1)
Yacht.create(name:"Rabbia", size: 65, price_per_day: 750000, user: user1)
Yacht.create(name:"Massilia", size: 42, price_per_day: 310000, user: user1)
Yacht.create(name:"Olivia", size: 35, price_per_day: 100000, user: user1)
puts "Yachts à l'eau"
