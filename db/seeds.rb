# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    category: 'italian'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    category: 'italian'
  },
  {
    name: 'Jerk Seasoning',
    address: 'Sunshine Avenue London E1 6RT',
    category: 'italian'
  },
  {
    name: 'Sunshine',
    address: '20 Sun High St, London E1 9PL',
    category: 'chinese'
  },
  {
    name: 'Coders Delight',
    address: '09 Code St, London W12 9LQ',
    category: 'french'
  },

  {
    name: 'Kebab',
    address: '56A Kebab st, London E1 8YH',
    category: 'italian'
  },

  {
    name: 'No Name',
    address: '67 Nowhere, London E1 7PL',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
