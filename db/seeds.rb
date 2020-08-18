# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clean DB'
Product.destroy_all
User.destroy_all

puts 'create some products'
a = Product.create!(name: 'yoyo stroller',description: 'black yoyo black yoyo black yoyo black yoyo black yoyo black yoyo', price: '5', city: 'Bordeaux')
Product.create!(name: 'pink yoyo stroller',description: 'pink yoyo pink yoyo pink yoyo pink yoyo pink yoyo pink yoyo', price: '4', city: 'Bordeaux')
Product.create!(name: 'crib',description: 'baby bedside bassinet, 3 in 1 portable beside sleeper crib', price: '3', city: 'Bordeaux')
Product.create!(name: 'double toddlerbed',description: 'delta children interactive wood toddlerbed disney minnie mouse', price: '5', city: 'Nantes')
Product.create!(name: 'single toddlerbed',description: 'delta children 3D footboard toddlerbed, cars 3 twingle stars fiber', price: '6', city: 'Niort')

puts 'create some users'
b = User.create!(first_name:"ophelie", last_name:"roux", email:"ophelie@gmail.com", password:"ophelie")
User.create!(first_name:"deva", last_name:"sou", email:"deva@gmail.com", password:"devadeva")
User.create!(first_name:"victorien", last_name:"brun", email:"victorien@gmail.com", password:"victorien")
User.create!(first_name:"sophie", last_name:"rouchon", email:"sophie@gmail.com", password:"sophie")

puts 'create some bookings'
# ici on fait les associations a la mano! Plus tard on devra associé les variables aux params :)
c = Booking.new(start_date: Date.parse('2020-08-16'), end_date: Date.parse('2020-08-18'))
c.user = b
c.product = a
c.save!

puts 'finished'
