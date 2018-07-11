class Api::ProductsController < ApplicationController
 def index
    search = params[:search]
    if search
      @products = Product.where('name LIKE ?', "%#{search}%").order(:id => :asc) 
    else
      @products = Product.all.order(:id => :asc)
    end

    # @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    @product1 = Product.new(
        name: params[:input_name],
        price: params[:input_price],
        image_url: params[:input_image_url],
        description: params[:input_description]
        )
    @product1.save
    render "create.json.jbuilder"
  end
end
