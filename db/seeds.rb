# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

r1 = Restaurant.create(name: 'r1', address: 'italy 1', category: 'italian')
r2 = Restaurant.create(name: 'r2', address: 'france 2', category: 'french')
r3 = Restaurant.create(name: 'r3', address: 'china 3', category: 'chinese')
r4 = Restaurant.create(name: 'r4', address: 'japan 4', category: 'japanese')
r5 = Restaurant.create(name: 'r5', address: 'belgian 5', category: 'belgian')

