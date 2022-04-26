# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Department.destroy_all
Product.destroy_all

demo = User.create!('name': 'Demo', 'email': 'demo@gmail.com', 'password': 'password')

beauty = Department.create!(name: 'Beauty')
food = Department.create!(name: 'Food')
kitchen = Department.create!(name: 'Kitchen')
attire = Department.create!(name: 'Clothing, Shoes and Jewelry')
garden = Department.create!(name: 'Gardening')
toys = Department.create!(name: 'Toys and Games')
gifts = Department.create!(name: 'Traditional Gifts')
health = Department.create!(name: 'Health')
art = Department.create!(name: 'Art')

