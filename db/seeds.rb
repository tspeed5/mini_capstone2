# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 100.times do 

#   product1 = Product.new(name: Faker::Device., price: Faker::Number.between(1, 10), image_url: "www.image.org", description: Faker::Hipster.sentence)
 
#  # product1 = Product.new(name: "stapler", price: 2, image_url: "www.image.org", description: "will hold your papers tightly together")

#   product1.save
# end

# supplier1 = Supplier.create(name: "Home Depot", email: "home.depot@email.com", phone_number: "3125551212")

# # supplier1.save

# supplier2 = Supplier.create(name: "Supplier Heaven", email: "sh@email.com", phone_number: "3145551212")

# supplier2.save

# suppliers = Supplier.all

# products = Product.all

# products.each do |product|
#   product.supplier_id = suppliers.sample.id
#   product.save
# end

image1 = Image.create(product_id: 1, link: "https://www.sockittome.com/images/detailed/6/MEF0209.jpg")

image2 = Image.create(product_id: 1, link: "https://www.uncommongoods.com/images/items/40200/40240_1_1200px.jpg")

image3 = Image.create(product_id: 2, link: "https://images-na.ssl-images-amazon.com/images/I/7134d7zkJKL._SL1500_.jpg")

image4 = Image.create(product_id: 2, link: "https://candid-images.s3-us-west-2.amazonaws.com/251620379539.jpg")

