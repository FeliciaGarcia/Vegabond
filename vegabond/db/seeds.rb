# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Post.destroy_all

city = City.create([{title: 'Atlanta', description: 'growing city', photo_url: 'http://i.imgur.com/TKVACkb.jpg', longitude: '33.7490', latitude: '84.3880'}])
# city = City.create([{title: 'New york', description: 'growing city', photo_url: 'http://i.imgur.com/TKVACkb.jpg', longitude: '33.7490', latitude: '84.3880'}])
post = Post.create([{user_id: 1, city_id:14, title: 'Love this city', content:'the beltline is dank'}])
# post = Post.create([{user_id: 1, city_id:6, content:'the beltline is dank'}])
