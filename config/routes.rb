Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    # get all products
    get '/products' =>  'products#index'
  #   get "/one_product_url" => "products#one_product_action"
    get '/products/:id' => 'products#show'
    # create a new product
    post '/products' => 'products#create'
    # update an existing product
    
  end

end

