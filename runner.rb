require 'unirest'

# create action to create new product in mini_capstone2 app
response = Unirest.post("localhost:3000/api/products",
  parameters: {
    input_name: "chair4",
    input_price: "16",
    input_image_url: "www.chair.url",
    input_description: "a quad excellent place to sit"
    }
  )

p response.body