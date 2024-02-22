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



user1 = User.create!(
  username: "Yoshio Kaneko",
  region: Faker::Nation.capital_city,
  email: "kanekoyoshio007@gmail.com",
  password: "123456"
)


user2 = User.create!(
  username: "Daniel Chin",
  region: Faker::Nation.capital_city,
  email: "danchin327@gmail.com",
  password: "123456"
)

# 21.times do
#   name = [Faker::Sport.unusual_sport, "Hostess", "Space", "Baby-Sitting", "Chef", "Choir", "Coding", "Doctor","Comedian", "Tutor"].sample

#   samurai = Samurai.create!(
#     name: name,
#     price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
#     group_size: [100, 200, 300, 400, 500].sample,
#     skill: "#{name} & #{Faker::Esport.game}",
#     description: Faker::Quote.famous_last_words,
#     user: user
#   )
#   url = ["https://t3.ftcdn.net/jpg/05/53/06/48/360_F_553064887_1y1LmbleDxEdeOYm0pVGqNzLtnqwcqKq.jpg","https://cdn.britannica.com/71/196871-050-B8665B11/Samurai-Armour-Kusakabe-Kimbei.jpg","https://image.jimcdn.com/app/cms/image/transf/dimension=1040x10000:format=jpg/path/s2217cd0bb1220415/image/i516497a395e31ec1/version/1692408520/samurai-armour.jpg","https://cdn.thecollector.com/wp-content/uploads/2022/09/samurai-armor-timeline-evolution-japan-history.jpg?width=1400&quality=70","https://cdn.thecollector.com/wp-content/uploads/2022/01/utagawa-tokoyuni-high-ranking-samurai-drawing.jpg?width=1400&quality=55","https://assets.editorial.aetnd.com/uploads/2009/10/samurai-bushido-gettyimages-613479624.jpg","https://wallpapers.com/images/hd/samurai-background-6wdyh7nx8m0vjwb1.jpg"].sample
#   file = URI.open(url)
#   samurai.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   samurai.save
# end


space_samurai = Samurai.create(name: "Space",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Space Travelling",
description: "Space suits are more comfortable than armor. They love it up there.",
user:user1)
space_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708515282/samurai/282d7328-2fdc-4f57-82f4-43873111cf5d_utent8.webp"
space_file = URI.open(space_url)
space_samurai.photo.attach(io: space_file, filename: "space_samurai", content_type: "image/webp")

yoga_samurai = Samurai.create(name: "Yoga",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Yoga for all ages",
description: "Come for the yoga. Stay for the kombucha.",
user:user1)
yoga_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708519808/samurai/f179dafa-18a4-477f-b336-1672fbe1f4ae_se3qei.webp"
yoga_file = URI.open(yoga_url)
yoga_samurai.photo.attach(io: yoga_file, filename: "yoga_samurai", content_type: "image/webp")

boyfriend_samurai = Samurai.create(name: "Boyfriend",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Dating in a relaxed atmosphere.",
description: "They protect. They attack. And if you tired, they massage your back.",
user:user1)
boyfriend_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514673/samurai/c8b5c96b-7f1b-4763-87c3-87e4a151e8c9_o2o4qy.webp"
boyfriend_file = URI.open(boyfriend_url)
boyfriend_samurai.photo.attach(io: boyfriend_file, filename: "boyfriend_samurai", content_type: "image/webp")

drive_samurai = Samurai.create(name: "Driving",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Driving",
description: "Years of horseriding paid off. They always look both ways for enemies.",
user:user1)
drive_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514624/samurai/891390b3-0522-493e-a6c9-e58092a23851_hpddac.webp"
drive_file = URI.open(drive_url)
drive_samurai.photo.attach(io: drive_file, filename: "drive_samurai", content_type: "image/webp")

doctor_samurai = Samurai.create(name: "Doctor",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Medicine",
description: "They know injuries. Trust me.",
user:user1)
doctor_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514512/samurai/31f3dbdd-2dc0-41bf-8fe8-220d02d1308b_z3vijl.webp"
doctor_file = URI.open(doctor_url)
doctor_samurai.photo.attach(io: doctor_file, filename: "doctor_samurai", content_type: "image/webp")

surfing_samurai = Samurai.create(name: "Surfing",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Surfing",
description: "Hang 天.",
user:user1)
surfing_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514457/samurai/19a4817f-20ec-4915-83ee-5188b56b11e7_utuv7n.webp"
surfing_file = URI.open(surfing_url)
surfing_samurai.photo.attach(io: surfing_file, filename: "surfing_samurai", content_type: "image/webp")

photography_samurai = Samurai.create(name: "Photography",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Photography",
description: "They don't take prisoners. But they will take their photo.",
user:user1)
photography_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514401/samurai/0a4c9f2a-1b8c-4f34-a22b-97df5e42dd08_hhplgj.webp"
photography_file = URI.open(photography_url)
photography_samurai.photo.attach(io: photography_file, filename: "photography_samurai", content_type: "image/webp")

therapy_samurai = Samurai.create(name: "Therapy",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Therapy",
description: "Sometimes, its okay to lower your defense and talk.",
user:user1)
therapy_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514344/samurai/2882b400-033c-4dd5-a9d3-38e94db72900_yd4xfv.webp"
therapy_file = URI.open(therapy_url)
therapy_samurai.photo.attach(io: therapy_file, filename: "therapy_samurai", content_type: "image/webp")

coding_samurai = Samurai.create(name: "Coding",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Coding",
description: "Their favorite language is Ruby.",
user:user1)
coding_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514270/samurai/e4c29740-aa49-4cd1-b792-099124515adc_ubhoot.webp"
coding_file = URI.open(coding_url)
coding_samurai.photo.attach(io: coding_file, filename: "coding_samurai", content_type: "image/webp")

coaching_samurai = Samurai.create(name: "Coaching",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Coaching",
description: "Strategies will be on the aggressive side.",
user:user1)
coaching_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514226/samurai/d64a9bf8-bbff-4ef0-bf2e-7ed7058c9be3_p8xxdb.webp"
coaching_file = URI.open(coaching_url)
coaching_samurai.photo.attach(io: coaching_file, filename: "coaching_samurai", content_type: "image/webp")

cooking_samurai = Samurai.create(name: "Chef",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "Cooking",
description: "They can also do baking and vegan options.",
user:user1)
cooking_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708514185/samurai/e6be5a88-4b89-4de7-a12d-ca5f06b64153_s2tup1.webp"
cooking_file = URI.open(cooking_url)
cooking_samurai.photo.attach(io: cooking_file, filename: "cooking_samurai", content_type: "image/webp")

daycare_samurai = Samurai.create(name: "Daycare",
price_per_day: [10000, 20000, 30000, 40000, 50000, 60000, 700000].sample,
group_size: [100, 200, 300, 400, 500].sample,
skill: "daycare",
description: "They can teach kids origami and bushido for free.",
user:user2)
daycare_url = "https://res.cloudinary.com/dugz7wqhz/image/upload/v1708520305/samurai/f71de473-2a61-4acf-95db-365635a1f5b1_k3goba.webp"
daycare_file = URI.open(daycare_url)
daycare_samurai.photo.attach(io: daycare_file, filename: "daycare_samurai", content_type: "image/webp")



puts "...created #{Samurai.count} samurais"
puts "Creating user"
puts "Creating booking"


3.times do
  booking = Booking.new(
    user: user2,
    samurai: Samurai.all.sample,
    start_date: Faker::Date.between(from: '2024-02-14', to: '2024-02-25'),
    end_date:Faker::Date.between(from: '2024-02-25', to: '2024-03-27'),
    status: ["pending", "approved", "rejected"].sample
  )
  booking.save!
end
