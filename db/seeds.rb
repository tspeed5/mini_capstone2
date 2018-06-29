# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 

  product1 = Product.new(name: Faker::Device., price: Faker::Number.between(1, 10), image_url: "www.image.org", description: Faker::Hipster.sentence)
 
 # product1 = Product.new(name: "stapler", price: 2, image_url: "www.image.org", description: "will hold your papers tightly together")

  product1.save
end