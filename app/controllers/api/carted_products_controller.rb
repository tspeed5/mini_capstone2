class Api::CartedProductsController < ApplicationController


  def create
    @carted_products = CartedProduct.new(
      status: "Carted",
      user_id: :current_user,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: Order.id
      )
    
   @carted_products.save
  end


end
end
