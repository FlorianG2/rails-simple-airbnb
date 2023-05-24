# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all
10.times do
  Flat.create!(
    name: Faker::Movies::BackToTheFuture.character,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraphs(number: 1),
    price_per_night: rand(50..99),
    number_of_guests: rand(1..7)
  )
end
