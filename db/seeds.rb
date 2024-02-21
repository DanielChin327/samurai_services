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

21.times do
  name = [Faker::Sport.unusual_sport, "Hostess", "Space", "Baby-Sitting", "Chef", "Choir", "Coding", "Doctor","Comedian", "Tutor"].sample

  samurai = Samurai.create!(
    name: name,
    price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
    group_size: [100, 200, 300, 400, 500].sample,
    skill: "#{name} & #{Faker::Esport.game}",
    description: Faker::Quote.famous_last_words,
    user: user
  )
  url = ["https://t3.ftcdn.net/jpg/05/53/06/48/360_F_553064887_1y1LmbleDxEdeOYm0pVGqNzLtnqwcqKq.jpg","https://cdn.britannica.com/71/196871-050-B8665B11/Samurai-Armour-Kusakabe-Kimbei.jpg","https://image.jimcdn.com/app/cms/image/transf/dimension=1040x10000:format=jpg/path/s2217cd0bb1220415/image/i516497a395e31ec1/version/1692408520/samurai-armour.jpg","https://cdn.thecollector.com/wp-content/uploads/2022/09/samurai-armor-timeline-evolution-japan-history.jpg?width=1400&quality=70","https://cdn.thecollector.com/wp-content/uploads/2022/01/utagawa-tokoyuni-high-ranking-samurai-drawing.jpg?width=1400&quality=55","https://assets.editorial.aetnd.com/uploads/2009/10/samurai-bushido-gettyimages-613479624.jpg","https://wallpapers.com/images/hd/samurai-background-6wdyh7nx8m0vjwb1.jpg"].sample
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
