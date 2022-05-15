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
puts "Creating 1 standard user"
user1 = User.new(email: "test@test.com", password: "password", name:"Test", surname:"Test")
user1.save

puts "Creating 1 admin"
admin1 = User.new(email: "admin@test.com", password: "password", name:"Test", surname:"Test", admin: true)
admin1.save

# Seeds Packages

puts "Creating packages..."
Package.create!(
  size: "small",
  package_type: "earth",
  base_price: 500
)

Package.create!(
  size: "medium",
  package_type: "earth",
  base_price: 1500
)

Package.create!(
  size: "large",
  package_type: "earth",
  base_price: 2500
)

Package.create!(
  size: "small",
  package_type: "outer space",
  base_price: 250
)

Package.create!(
  size: "medium",
  package_type: "outer space",
  base_price: 500
)

Package.create!(
  size: "large",
  package_type: "outer space",
  base_price: 1000
)

Package.create!(
  size: "small",
  package_type: "metaverse",
  base_price: 150_000
)

Package.create!(
  size: "medium",
  package_type: "metaverse",
  base_price: 300_000
)

Package.create!(
  size: "large",
  package_type: "metaverse",
  base_price: 600_000
)

# Seed Locations Earth

puts "Searching for unique places..."

Location.create!(
  name: "Point Nemo",
  environment: "earth",
  latitude: -48.876667,
  longitude: -123.393333,
  picture_path: "Point_Nemo.jpg"
)



Location.create!(
  name: "Mount Everest",
  environment: "earth",
  latitude: 86.9253,
  longitude: 27.9881,
  picture_path: "Mount_Everest.jpg"
)

Location.create!(
  name: "Mount Kilimanjaro",
  environment: "earth",
  latitude: -3.067425,
  longitude: 37.355627 ,
  picture_path: "Mount_Kilimanjaro.jpg"
)

Location.create!(
  name: "Null Island",
  environment: "earth",
  latitude: 0,
  longitude: 0,
  picture_path: "Null_Island.jpg"
)

Location.create!(
  name: "Eiffel Tower",
  environment: "earth",
  latitude: 48.858370,
  longitude: 2.294481,
  picture_path: "Eiffel_Tower.jpg"
)

Location.create!(
  name: "Empire State Building",
  environment: "earth",
  latitude: 40.748441,
  longitude: -73.985664,
  picture_path: "Empire_State_Building.jpg"
)

Location.create!(
  name: "Challenger Deep",
  environment: "earth",
  latitude: 11.373333,
  longitude: 142.591667,
  picture_path: "Challenger_Deep.jpg"
)

Location.create!(
  name: "Svalbard Global Seed Vault",
  environment: "earth",
  latitude: 78.235677,
  longitude: 15.491325,
  picture_path: "Svalbard_Global_Seed_Vault.jpg"
)

# Seed Locations Space


Location.create!(
  name: "Milky Way",
  environment: "outer space",
  picture_path: "Milky_Way.jpg"
)

puts "Locations on Outer Space booked!"

Location.create!(
  name: "Andromeda Galaxy",
  environment: "outer space",
  picture_path: "Andromeda_Galaxy.jpg"
)

puts "Locations on Outer Space booked!"

Location.create!(
  name: "Mars",
  environment: "outer space",
  picture_path: "mars.jpg"
)

puts "Locations on Outer Space booked!"


# Seed Locations Metaverse

Location.create!(
  name: "Facebook Metaverse",
  environment: "metaverse",
  picture_path: "Facebook_Metaverse.jpg"
)

puts " Facebook Metaverse location saved!"

Location.create!(
  name: "Microsoft Metaverse",
  environment: "metaverse",
  picture_path: "Microsoft_Metaverse.jpg"
)

puts " Microsoft Metaverse location saved!"

Location.create!(
  name: "Crypto Metaverse",
  environment: "metaverse",
  picture_path: "Crypto_Metaverse.jpg"
)

puts "Crypto location saved!"
