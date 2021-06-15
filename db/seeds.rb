# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

types = ["design", "css", "algo"]
levels = ["low", "middle", "high"]
(1..10).each do |i|
  Challenge.create(
    c_type: types.sample,
    level: levels.sample,
    challenge_slug: Faker::Internet.uuid,
    challenge_description: Faker::Lorem.paragraph(sentence_count: 2),
    challenge_img: "https://picsum.photos/600/400",
    challenge_link: Faker::Internet.url,
    challenge_name: Faker::Name.first_name,
  )
  p "#{i} challenge created"
end
