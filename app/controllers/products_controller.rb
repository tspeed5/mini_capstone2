class Api::ProductsController < ApplicationController

  def one_product_action
    @product1 = Product.first
    render "one_product_view.json.jbuilder"
  end
end
