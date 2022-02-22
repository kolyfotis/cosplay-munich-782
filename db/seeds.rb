# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all users"
User.delete_all

puts "Seeding 5 users"

user1 = User.new(email: "one@email.com", password: "123456", first_name: "John", last_name: "First")
user1.save!
user2 = User.new(email: "two@email.com", password: "123456", first_name: "John", last_name: "Second")
user2.save!
user3 = User.new(email: "three@email.com", password: "123456", first_name: "John", last_name: "Third")
user3.save!
user4 = User.new(email: "four@email.com", password: "123456", first_name: "John", last_name: "Fourth")
user4.save!
user5 = User.new(email: "five@email.com", password: "123456", first_name: "John", last_name: "Fifth")
user5.save!

puts "Done!"
