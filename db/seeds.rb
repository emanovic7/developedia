# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




20.times do
  Developer.create(name: Faker::Name.name, location: Faker::WorldCup.city)
end

[
  "python",
  "java",
  "ruby",
  "ruby on rails",
  "objective-c",
  "c++",
  "javacript",
  "c#",
  "C language",
  "PHP",
  "SQL",
  "swift"
].each do |language|
  Skill.create(name: language)
end

puts "done seeding :)"
