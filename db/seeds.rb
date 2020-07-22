# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Todo.destroy_all
Item.destroy_all

u = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 'fakepass', password_confirmation: 'fakepass')

50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: u.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end

puts "#{User.count} user(s) created"
puts "#{Todo.count} todos(s) created"
puts "#{Item.count} items(s) created"
