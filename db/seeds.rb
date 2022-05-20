# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rooms = [{ name: 'Sports' }, { name: 'Tech' }]

users = [{ username: 'AndresM' }, { username: 'JohnH' }]
# users = [{ username: 'AndresM', password: '123456' }, { username: 'JohnH', password: '123456' }]
puts '------------Users------------'

users.each do |attributes|
  User.create!(attributes)
end

puts '------------Rooms------------'

rooms.each do |attributes|
  Room.create!(attributes)
end
