# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clean DB'
Product.destroy_all

puts 'create some products'
Product.create!(name: 'yoyo stroller',description: 'black yoyo black yoyo black yoyo black yoyo black yoyo black yoyo', price: '5', city: 'Bordeaux')
Product.create!(name: 'pink yoyo stroller',description: 'pink yoyo pink yoyo pink yoyo pink yoyo pink yoyo pink yoyo', price: '4', city: 'Bordeaux')
Product.create!(name: 'crib',description: 'baby bedside bassinet, 3 in 1 portable beside sleeper crib', price: '3', city: 'Bordeaux')
Product.create!(name: 'double toddlerbed',description: 'delta children interactive wood toddlerbed disney minnie mouse', price: '5', city: 'Bordeaux')
Product.create!(name: 'single toddlerbed',description: 'delta children 3D footboard toddlerbed, cars 3 twingle stars fiber', price: '6', city: 'Bordeaux')

# puts 'create some users'

# puts 'create some bookings'

puts 'finished'
