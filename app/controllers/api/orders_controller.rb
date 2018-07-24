class Api::OrdersController < ApplicationController

  def index
    search = params[:search]
    if search
      @orders = Order.where('name LIKE ?', "%#{search}%").order(:id => :asc) 
    else
      @orders = Order.all.order(:id => :asc)
   end
    # @order = Product.all
    render "index.json.jbuilder"
  end

  def show
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
    render "show.json.jbuilder"
  end

  def create
    # @order1 = Order.new(
    #     user_id: current_user,
    #     product_id: params[:input_product_id],
    #     quantity: params[:input_quantity],
    #     # subtotal: params[:input_subtotal],
    #     # tax: params[:input_tax],
    #     # total: params [:total]
    #     )
    # @order1.save
    # render "create.json.jbuilder"

     product = Product.find_by(id: params[:product_id])

    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal


    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    @order.save
    render "show.json.jbuilder"
  end
end
