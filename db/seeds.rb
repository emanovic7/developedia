# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Developer.destroy_all
Skill.destroy_all


Developer.create(name: "Alan Turing", location: "Cambridge, UK", img_url: "http://www.avatarsinpixels.com/Public/images/previews/minipix4.png")
Developer.create(name: "Margaret Hamilton", location: "Cambridge, MA", img_url: "http://www.avatarsinpixels.com/Public/images/previews/minipix6.png")
Developer.create(name: "Elon Musk", location: "Los Angeles, CA", img_url: "https://i.pinimg.com/originals/70/d1/da/70d1da88428daf4610a70081ec8b28aa.png")
Developer.create(name: "Steve Wozniak", location: "Palo Alto, CA", img_url: "http://www.avatarsinpixels.com/Public/images/previews/pony3.png")
Developer.create(name: "Gladys West", location: "Sutherland, VA", img_url: "http://www.avatarsinpixels.com/Public/images/previews/minipix5.png")
Developer.create(name: "Adele Goldberg", location: "Cleveland, OH", img_url: "http://www.avatarsinpixels.com/minipix/eyJIYWlyTG93ZXIiOiIxNyIsIkV5ZXMiOiIxIiwiU2hvZXMiOiI0IiwiVG9wIjoiMTIiLCJKYWNrZXQiOiI2IiwiSGFpciI6IjMwIiwiR2xhc3NlcyI6IjIiLCJoYWlyVG9uZSI6ImE4M2YzMyIsInRvcFRvbmUiOiJmZjJlNzIiLCJzaG9lc1RvbmUiOiI2OTE3MTciLCJqYWNrZXRUb25lIjoiYzQ1MjFlIiwiamFja2V0VG9uZTIiOiI5MzQ5MTcifQ==;/5/show.png")
Developer.create(name: "Ada Lovelace", location: "London, UK", img_url: "http://www.avatarsinpixels.com/Public/images/previews/chibi1.png")
Developer.create(name: "Emelia Clarke", location: "Cambridge, UK", img_url: "http://www.avatarsinpixels.com/Public/images/previews/pony2.png")
Developer.create(name: "Bill Gates", location: "Seattle, WA", img_url: "http://www.avatarsinpixels.com/minipix/eyJTb2NrcyI6IjIiLCJTaG9lcyI6IjMiLCJQYW50cyI6IjEiLCJUb3AiOiIxMyIsIkphY2tldCI6IjYiLCJIYWlyIjoiMTAiLCJza2luVG9uZSI6ImZkZThjNCIsImV5ZXNUb25lIjoiMmYyYTE5IiwiZXllc1RvbmUyIjoiY2RlZGJhIiwibWFza1RvbmUiOiJiNzg1M2EiLCJoYWlyVG9uZSI6ImE0NjM3YSIsInBhbnRzVG9uZSI6IjMyNjM2MyIsInBhbnRzVG9uZTIiOiIwYzFjMjIiLCJ0b3BUb25lIjoiZWVlZWVlIiwidG9wVG9uZTIiOiIxZGIyZWEiLCJzaG9lc1RvbmUiOiIwMjAxMDEiLCJzb2Nrc1RvbmUiOiJmZmZmZmYiLCJqYWNrZXRUb25lIjoiNDU3MGJhIiwiamFja2V0VG9uZTIiOiIwOTE5MmQifQ==;/5/show.png")
Developer.create(name: "Eric Kim", location: "Brooklyn, NY", img_url: "https://i.pinimg.com/originals/bb/14/66/bb146666c1e70354a6555c650375fbc8.png")

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
  Skill.create(name: language, level: rand(1..10))
end

puts "done seeding :)"
