# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Clearing database..."
Package.destroy_all
Location.destroy_all
User.destroy_all

# Seeds Users

puts "Creating 1 admin"
user1 = User.new(email: "test@test.com", password: "password", first_name:"Test", surname:"Test)
file1 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
user1.photo.attach(io: file1, filename: "user1" , content_type: 'image/jpg')
user1.save
puts "Creating 1 admin"
admin1 = User.new(email: "admin@test.com", password: "password", first_name:"Test", surname:"Test, admin: true)
file1 = URI.open('https://kitt.lewagon.com/placeholder/users/random')
admin1.photo.attach(io: file1, filename: "admin1" , content_type: 'image/jpg')
admin1.save

# Seeds Packages

puts "Creating packages..."
Package.create!(
  size: "small",
  package_type: "earth",
  base_price: 1
)

Package.create!(
  size: "medium",
  package_type: "earth",
  base_price: 2
)

Package.create!(
  size: "large",
  package_type: "earth",
  base_price: 3
)

Package.create!(
  size: "small",
  package_type: "outer space",
  base_price: 50
)

Package.create!(
  size: "medium",
  package_type: "outer space",
  base_price: 200
)

Package.create!(
  size: "large",
  package_type: "outer space",
  base_price: 3000
)

Package.create!(
  size: "small",
  package_type: "metaverse",
  base_price: 10_000
)

Package.create!(
  size: "medium",
  package_type: "metaverse",
  base_price: 20_000
)

Package.create!(
  size: "large",
  package_type: "metaverse",
  base_price: 30_000
)

puts "Creating locations..."
Location.create!(
  name: "Point Nemo",
  environment: "earth",
  latitude: 0,
  longitude: 0
)

Location.create!(
  name: "Mount Everest",
  environment: "earth",
  latitude: 27.9881,
  longitude: 86.9253
)

Location.create!(
  name: "Mount Kilimanjaro",
  environment: "earth",
  latitude: -3.038,
  longitude: 37.906
)

Location.create!(
  name: "Paris",
  environment: "earth",
  latitude: 48.8566,
  longitude: 2.3522
)

Location.create!(
  name: "New York",
  environment: "earth",
  latitude: 40.7128,
  longitude: 74.0060
)

Location.create!(
  name: "Challenger Deep",
  environment: "earth",
  latitude: -24.6334,
  longitude: 133.865
)

Location.create!(
  name: "Antarctica",
  environment: "earth",
  latitude: -90,
  longitude: 0
)

puts "Locations on Earth created!"
Location.create!(
  name: "Mars",
  environment: "outer space",
  picture_path: "mars.jpg"
)

Location.create!(
  name: "Venus",
  environment: "outer space",
  picture_path: "venus.jpg"
)

puts "Locations in Outer Space created!"


Location.create!(
  name: "Venus",
  environment: "metaverse",
  picture_path: "metaverse_big.jpg"
)

puts "Metaverse location created!"
