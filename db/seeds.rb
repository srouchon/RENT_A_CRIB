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
Booking.destroy_all

puts 'create some products'
a = Product.create!(name: 'Yoyo Stroller',description: 'YOYO2 stroller folds and unfolds with one hand, can be carried over the shoulder, slips in anywhere, stores easily and travels as carry-on-baggage', price: '5', city: 'Bordeaux', photo:'yoyostroller.jpg')
Product.create!(name: 'Bugaboo stroller',description: 'Compact without compromise! The streamlined design of the CRUZ V2 gives you more without weighing you down. So stroll down bumpy streets.', price: '4', city: 'Bordeaux', photo: 'bugaboostroller.jpg')
Product.create!(name: 'Crib',description: 'Baby bedside bassinet, 3 in 1 portable beside sleeper crib', price: '3', city: 'Bordeaux', photo: 'crib.jpg')
Product.create!(name: 'Housebed',description: 'Delta children interactive wood toddlerbed disney minnie mouse', price: '5', city: 'Nantes', photo: 'housebed.jpg' )
Product.create!(name: 'Toddlerbed',description: 'The Ella Cot Bed adapts effortlessly from cot to bed providing the perfect sleeping environment for your little one. To keep up with your growing child.', price: '6', city: 'Niort', photo: 'childbed.jpg')
Product.create!(name: 'Baby carrier',description: 'During those first months, you hold your new-born in your arms almost all the time. You feed, lull to sleep, comfort and cuddle them around the clock.', price: '6', city: 'Niort', photo: 'mumbabycarrier.jpg')

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
