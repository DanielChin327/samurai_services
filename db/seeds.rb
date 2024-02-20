# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."
Samurai.destroy_all
puts "Creating samurais..."

name = [Faker::Sport.unusual_sport, "hostness", "Space"].sample
10.times do
  Samurai.create!(
    name: name,
    price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
    group_size: [100, 200, 300, 400, 500].sample,
    skill: "#{name} & #{Faker::Esport.game}",
    description: Faker::Quote.famous_last_words
  )
end

puts "...created #{Samurai.count} samurais"
