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
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/super-mario-01.jpg", folder: 'development')

# puts 'Uploading images to cloudinary...'

# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/batman-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/batman-02.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/bugs-bunny-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/gandalf-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/goofy-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/harry-potter-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/jack-sparrow-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/jack-sparrow-02.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/optimus-prime-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/spiderman-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/superman-01.jpg", folder: 'development')
# Cloudinary::Uploader.upload("/home/fotis/Pictures/cosplay-seeds/super-mario-01.jpg", folder: 'development')

# puts 'Done! All images are on cloudinary server under /development folder.'

puts 'Seeding 5 cosplays associated to exiting users...'
puts 'Fetching cosplays images...'

cosplay = Cosplay.new(price: 15.99, details: 'Super Mario', user: user3)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/egggbjxowfuhthswphse.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "egggbjxowfuhthswphse.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 49.99, details: 'Superman', user: user5)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/qavroaua4oezqivg1kja.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "qavroaua4oezqivg1kja.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 99.99, details: 'Spiderman', user: user5)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/cuczsk6zvr8eekcpbzo7.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "cuczsk6zvr8eekcpbzo7.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 85.00, details: 'Optimus Prime', user: user2)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/l7dpyglejrfa6wvxkxit.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "l7dpyglejrfa6wvxkxit.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 35.50, details: 'Captain Jack Sparrow', user: user4)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/njobtke1on9ubtulu7sj.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "njobtke1on9ubtulu7sj.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 15.50, details: 'Captain Jack Sparrow', user: user2)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/pa0mnlvigly681hi85ql.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "pa0mnlvigly681hi85ql.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 25.50, details: 'Harry Potter', user: user2)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/wgpm8efyw7cujvic0jkg.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "wgpm8efyw7cujvic0jkg.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'Goofy ', user: user4)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/wjd0eultrsukhqjegzkp.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "wjd0eultrsukhqjegzkp.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 130.00, details: 'Gandalf', user: user4)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/qdymooscin3bkutibqo6.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "qdymooscin3bkutibqo6.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 35.50, details: 'Bugs Bunny', user: user2)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/wvrq9f3ur5ilnphwoxa4.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "wvrq9f3ur5ilnphwoxa4.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 45.00, details: 'Batman', user: user5)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/bhrcisuwyhxpdgli0tye.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "bhrcisuwyhxpdgli0tye.png", content_type: 'image/png')
cosplay.save!
cosplay = Cosplay.new(price: 22.99, details: 'Batman', user: user4)
downloaded_image = URI.open("https://res.cloudinary.com/dqwzxjmpk/image/upload/v1645650968/development/jgp0jfi8a9mnierdm3a6.jpg")
cosplay.photo.attach(io: downloaded_image, filename: "jgp0jfi8a9mnierdm3a6.png", content_type: 'image/png')
cosplay.save!

puts 'Done.'
puts 'Finished seeding the DB.'
