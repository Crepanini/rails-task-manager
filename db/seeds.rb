# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.delete_all if Rails.env.development?
10.times do
  Task.create!(title: Faker::Hacker.verb, details: Faker::Hacker.say_something_smart)
end

# 10.times do
#   task
# end

puts "you have created #{Task.count} tasks"
