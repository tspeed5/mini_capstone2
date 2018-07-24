# json.array! @products.each do |product|
#   json.id product.id
#   json.name product.name
#   json.price product.price
#   json.discounted product.is_discounted?
#   # json.image_url product.image_url
#   json.description product.description
#   json.tax product.tax
#   json.total_with_tax product.total_with_tax
#   json.images product.image

# end

json.array! @products, partial: 'product', as: :product

