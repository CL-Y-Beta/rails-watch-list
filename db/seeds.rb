# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting movies..."

Movie.delete_all

puts "Creating movies..."

10.times do
  movie = Movie.create(title: Faker::Movie.title, overview: Faker::Lorem.words(number: rand(10..30)), poster_url: Faker::Internet.domain_name, rating: rand(1..10))

  puts "Movie:#{movie.id} is created!"
end

puts "Done!"
