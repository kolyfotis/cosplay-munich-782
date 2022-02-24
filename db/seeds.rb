# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all cosplays..."
Cosplay.delete_all
puts "Done."

puts "Deleting all users..."
User.delete_all
puts "Done."

puts "Seeding 5 users..."

user1 = User.new(email: "one@email.com", password: "123456", first_name: "John", last_name: "First")
user1.save!
user2 = User.new(email: "two@email.com", password: "123456", first_name: "Max", last_name: "Second")
user2.save!
user3 = User.new(email: "three@email.com", password: "123456", first_name: "George", last_name: "Third")
user3.save!
user4 = User.new(email: "four@email.com", password: "123456", first_name: "Julian", last_name: "Fourth")
user4.save!
user5 = User.new(email: "five@email.com", password: "123456", first_name: "Luigi", last_name: "Fifth")
user5.save!

puts "Done!"

# one of the users should have zero Cosplays (user1)
# one of the users should have exactly one Cosplay (user3)
# one of the users should have more than one Cosplays (user2, user4, user5)
# there have to be duplicate Cosplays for price comparison

# Upload to cloudinary from local Pictures folder example
# Cloudinary::Uploader.upload("/home/fotis/Pictures/super-mario-01.jpg", folder: 'development')

puts 'Seeding 5 cosplays associated to exiting users...'
p ENV["CLOUDINARY_URL"]
cosplay = Cosplay.new(price: 15.99, details: 'I can collect coins, save princesses and bring life to your party', user: user3, title: 'Super Mario')
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/jmhwobqikv4qxlgu6bai.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "jmhwobqikv4qxlgu6bai.jpg")
cosplay.save!
cosplay = Cosplay.new(price: 49.99, details: 'Looking for a man of steel?', user: user5, title: 'Superman')
cosplay.save!
cosplay = Cosplay.new(price: 99.99, details: 'I am avilable for children birthday parties', user: user5, title: 'Spiderman')
cosplay.save!
cosplay = Cosplay.new(price: 45.00, details: 'I made my own costume and I am happy to show it off', user: user5, title: 'Batman')
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'I am cheaper than the other guy', user: user4, title: 'Batman')
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'A-hyuk ', user: user4, title: 'Goofy')
cosplay.save!
cosplay = Cosplay.new(price: 130.00, details: 'You shall not pass... this oportunity', user: user4, title: 'Gandalf')
cosplay.save!
cosplay = Cosplay.new(price: 35.50, details: 'We can work on the price if you are serving rum', user: user4, title: 'Captain Jack Sparrow')
cosplay.save!
cosplay = Cosplay.new(price: 15.50, details: 'Captain Jack Sparrow', user: user2, title: 'Captain Jack Sparrow')
cosplay.save!
cosplay = Cosplay.new(price: 35.50, details: 'I\'ll bring my own carrots', user: user2, title: 'Bugs Bunny')
cosplay.save!
cosplay = Cosplay.new(price: 25.50, details: 'Aveda cadavra', user: user2, title: 'Harry Potter')
cosplay.save!
cosplay = Cosplay.new(price: 85.00, details: 'Autobots, roll out', user: user2, title: 'Optimus Prime')
cosplay.save!

puts 'Done.'
puts 'Finished seeding the DB.'
