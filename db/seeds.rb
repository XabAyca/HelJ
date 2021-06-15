# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.destroy_all
Needed.destroy_all
Project.destroy_all


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

needs=['Code','Product','Design']
3.times do |i|
  Needed.create(
    name:needs[i],
    description:Faker::Lorem.question(word_count:15)
  )
  p "#{needs[i]} created"
end

10.times do |i|
  User.create(
    email:Faker::Internet.email,
    password:'password',
    password_confirmation:'password'
  )
  p "#{i} users created"
end


10.times do |i|
  Project.create(
    project_title:Faker::Movies::StarWars.planet,
    project_slug:Faker::Internet.uuid,
    logo_url:"https://picsum.photos/600/400",
    description:Faker::Lorem.question(word_count: 25),
    owner_id:User.all.sample.id,
    figma_link:'https://www.figma.com/file/NKkddcf6ZR3WmTdwwaS30A/Quick-Cat?node-id=9%3A0',
    trello_link:'https://trello.com/invite/b/31aBUE6X/1bb418c4a4722f36f54482e5f4fbfa7e/helj',
    git_link:'https://github.com/XabAyca/HelJ',
    needed_id:Needed.all.sample.id,
    story:Faker::Lorem.question(word_count: 35)
  )
  p "#{i} projects created"
end

p "*"*30
p "Seed finished"
p "Well done 🎉 🍺"
