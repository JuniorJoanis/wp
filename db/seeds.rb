# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#seed offers

require 'csv'

puts "-- seed runing..."
CSV.foreach("db/csv/users.csv") do |row|
  User.create(name: row[0], postal: row[1])
end
puts "-- seed User table"

CSV.foreach("db/csv/offers.csv") do |row|
  Offer.create(name: row[0], postal: row[1], default: true )
end
puts "-- seed Offer table"