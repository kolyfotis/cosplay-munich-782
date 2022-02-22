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

cosplay = Cosplay.new(price: 15.99, details: 'Super Mario', user_id: 6)
cosplay.save!
cosplay = Cosplay.new(price: 49.99, details: 'Superwoman', user_id: 5)
cosplay.save!
cosplay = Cosplay.new(price: 99.99, details: 'Spiderman', user_id: 5)
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'Batman', user_id: 4)
cosplay.save!

puts "Done!"
