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
Booking.destroy_all
Samurai.destroy_all
User.destroy_all
puts "Creating samurais..."

user = User.create!(
  username: "Yoshio Kaneko",
  region: Faker::Nation.capital_city,
  email: "kanekoyoshio007@gmail.com",
  password: "123456"
)
name = [Faker::Sport.unusual_sport, "hostess", "space"].sample
10.times do
  samurai = Samurai.create!(
    name: name,
    price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
    group_size: [100, 200, 300, 400, 500].sample,
    skill: "#{name} & #{Faker::Esport.game}",
    description: Faker::Quote.famous_last_words,
    user: user
  )
  url = "https://t3.ftcdn.net/jpg/05/53/06/48/360_F_553064887_1y1LmbleDxEdeOYm0pVGqNzLtnqwcqKq.jpg"
  file = URI.open(url)
  samurai.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  samurai.save
end

puts "...created #{Samurai.count} samurais"
puts "Creating user"
puts "Creating booking"

4.times do
  booking = Booking.new(
    user: user,
    samurai: Samurai.all.sample,
    start_date: Faker::Date.between(from: '2024-02-14', to: '2024-02-25'),
    end_date:Faker::Date.between(from: '2024-02-25', to: '2024-03-27'),
    status: ["pending", "approved", "rejected"].sample
  )
  booking.save!
end
