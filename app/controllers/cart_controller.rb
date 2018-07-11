class CartController < ApplicationController

  before_action :authenticate_user!, except: [:add_to_cart, :view_order]


  def add_to_cart
    @order = current_order

    line_item = @order.line_items.find_by(product_id: params[:product_id])

    if line_item.blank?
      line_item = @order.line_items.new(product_id: params[:product_id], quantity: params[:quantity])
      @order.save
      session[:order_id] = @order.id

    else
      line_item.update(quantity: line_item.quantity += params[:quantity].to_i)
      
    end

    line_item.update(line_item_total: (line_item.quantity * line_item.product.price))

    redirect_back(fallback_location: root_path)
  end

  def view_order
    @line_items = current_order.line_items
  end

  def checkout
    # collect all the line items into an order
    line_items = current_order.line_items
    unless line_items.length == 0
      @order = current_order.update(user_id: current_user.id, subtotal: 0)
      @order = current_order

      # do each of the line items adding to the order
      line_items.each do |line_item|
        line_item.product.update(quantity: (line_item.product.quantity - line_item.quantity))
        @order.order_items[line_item.product_id] = line_item.quantity
        @order.subtotal += line_item.line_item_total
      end
      @order.save
      # figure out the order sales tax etc
      @order.update(sales_tax: (@order.subtotal * 0.07))
      @order.update(grand_total: (@order.subtotal + @order.sales_tax))
      session[:order_id] = nil
    end

  end

  def order_complete
    @order = Order.find(params[:order_id])
    @order.line_items.destroy_all
    @amount = (@order.grand_total.to_f.round(2) * 100).to_i

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Rails Stripe customer',
      :currency => 'usd'
    )

    rescue Stripe::CardError => e
    flash[:error] = e.message
  end
end

