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
Product.create!(name: 'Bugaboo Stroller',description: 'Compact without compromise! The streamlined design of the CRUZ V2 gives you more without weighing you down. So stroll down bumpy streets.', price: '4', city: 'Bordeaux', photo: 'bugaboostroller.jpg')
Product.create!(name: 'Crib',description: 'Baby bedside bassinet, 3 in 1 portable beside sleeper crib', price: '3', city: 'Bordeaux', photo: 'crib.jpg')
Product.create!(name: 'House Bed',description: 'Delta children interactive wood toddlerbed disney minnie mouse', price: '5', city: 'Nantes', photo: 'housebed.jpg' )
Product.create!(name: 'Toddler Bed',description: 'The Ella Cot Bed adapts effortlessly from cot to bed providing the perfect sleeping environment for your little one. To keep up with your growing child.', price: '6', city: 'Niort', photo: 'childbed.jpg')
Product.create!(name: 'Baby carrier',description: 'During those first months, you hold your new-born in your arms almost all the time. You feed, lull to sleep, comfort and cuddle them around the clock.', price: '6', city: 'Niort', photo: 'mumbabycarrier.jpg')
Product.create!(name: 'Brown Bed',description: 'Lovely bed for your baby. Comfortable mattress and lovely style for a cute baby room.', price: '6', city: 'Niort', photo: 'brownbed.jpg')
Product.create!(name: 'Chair',description: 'Great chair with a height that fits most tables. Your toddler will be able to share family meals with the rest of the family.', price: '6', city: 'Niort', photo: 'chair.jpg')
Product.create!(name: 'Brown Crib',description: 'Great crib for your baby. Lovely sense of nesting for long nights.', price: '6', city: 'Niort', photo: 'browncrib.jpg')
Product.create!(name: 'Lego',description: 'Well-known game that will keep your child busy and happy for hours.', price: '1', city: 'Paris', photo: 'lego.jpg')
Product.create!(name: 'Mario',description: 'A few figurines that your child will love to play with at any given time.', price: '3', city: 'Bayonne', photo: 'mario.jpg')
Product.create!(name: 'Outdoor Chair',description: 'A great chair to have a pic nic on the go or in your garden. Very safe and light. Lovely to travel during the summer.', price: '2', city: 'Bayonne', photo: 'outdoorchair.jpg')
Product.create!(name: 'White Bed',description: 'Lovely bed for your lovely baby. Enjoy this stylish bed.', price: '6', city: 'Bayonne', photo: 'whitebed.jpg')
Product.create!(name: 'Yellow Duck',description: 'A lovely and classical toy that any child will enjoy in his bath. From an early age, children will enjoy watching them float.', price: '1', city: 'St Denis de la Réunion', photo: 'yellowduck.jpg')

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
