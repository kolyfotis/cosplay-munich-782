# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Deleting all users"

# User.delete_all

# puts "Seeding 5 users"

# user = User.new(email: "one@email.com", password: "123456", first_name: "John", last_name: "First")
# user.save!
# user = User.new(email: "two@email.com", password: "123456", first_name: "John", last_name: "Second")
# user.save!
# user = User.new(email: "three@email.com", password: "123456", first_name: "John", last_name: "Third")
# user.save!
# user = User.new(email: "four@email.com", password: "123456", first_name: "John", last_name: "Fourth")
# user.save!
# user = User.new(email: "five@email.com", password: "123456", first_name: "John", last_name: "Fifth")
# user.save!

# puts "Done!"

puts 'Seeding 5 cosplays related to users'

# You might have to open rails c
# type User.all
# and change the following user_id to existing users
# ids in your local database

cosplay = Cosplay.new(price: 15.99, details: 'Super Mario', user_id: 6)
cosplay.save!
cosplay = Cosplay.new(price: 49.99, details: 'Superwoman', user_id: 5)
cosplay.save!
cosplay = Cosplay.new(price: 99.99, details: 'Spiderman', user_id: 5)
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'Batman', user_id: 4)
cosplay.save!
# # User.delete_all

# puts "Seeding 5 users"

user = User.new(email: "one@email.com", password: "123456", first_name: "John", last_name: "First")
user.save!
user = User.new(email: "two@email.com", password: "123456", first_name: "John", last_name: "Second")
user.save!
user = User.new(email: "three@email.com", password: "123456", first_name: "John", last_name: "Third")
user.save!
user = User.new(email: "four@email.com", password: "123456", first_name: "John", last_name: "Fourth")
user.save!
user = User.new(email: "five@email.com", password: "123456", first_name: "John", last_name: "Fifth")
user.save!
user = User.new(email: "spiderman@email.com", password: "123456", first_name: "John", last_name: "Spiderman")
user.save!
user = User.new(email: "catwoman@email.com", password: "123456", first_name: "John", last_name: "catwoman")
user.save!
user = User.new(email: "hulk@email.com", password: "123456", first_name: "John", last_name: "hulk")
user.save!
user = User.new(email: "batman@email.com", password: "123456", first_name: "John", last_name: "batman")
user.save!
user = User.new(email: "crocodile_hunter@email.com", password: "123456", first_name: "John", last_name: "crocodile_hunter")
user.save!
user = User.new(email: "bronzeman@email.com", password: "123456", first_name: "John", last_name: "bronzeman")
user.save!
user = User.new(email: "Iron_fist@email.com", password: "123456", first_name: "John", last_name: "Iron fist")
user.save!
user = User.new(email: "superman@email.com", password: "123456", first_name: "John", last_name: "superman")
user.save!
user = User.new(email: "bob@email.com", password: "123456", first_name: "John", last_name: "bob")
user.save!
user = User.new(email: "She-hulk@email.com", password: "123456", first_name: "John", last_name: "She-hulk")
user.save!
user = User.new(email: "Capt.Britain@email.com", password: "123456", first_name: "John", last_name: "Capt.Britain")
user.save!
user = User.new(email: "Red-Rocket@email.com", password: "123456", first_name: "John", last_name: "Red-Rocket")
user.save!
user = User.new(email: "ChuckNorris@email.com", password: "123456", first_name: "John", last_name: "Chuck Norris")
user.save!
user = User.new(email: "2chains@email.com", password: "123456", first_name: "John", last_name: "2chains")
user.save!
user = User.new(email: "3chains@email.com", password: "123456", first_name: "John", last_name: "3chains")
user.save!

# puts "Done!"
