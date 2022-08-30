# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all # if Rails.en.development

puts "Creating restaurants..."

category = %w[chinese italian japanese french belgian]

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Games::Pokemon.name,
    address: Faker::Games::Pokemon.location,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category[rand(5)]
  )
  puts "Created #{restaurant.name}"
end

# 50.times do
#   review = Review.create!(
#     rating: Faker::Number.within(range: 0..5)
#     content: Faker::Games::Pokemon.moves

#   )
#   puts "Created #{restaurant.name}"
# end

puts "Finished!"
