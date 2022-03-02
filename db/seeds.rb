require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying users"
User.destroy_all
puts "users destroyed"
puts "creating seeds"
10.times do
    User.create(username: Faker::Name.male_first_name, password: Faker::Name.female_first_name )
end

puts "10 users created"
