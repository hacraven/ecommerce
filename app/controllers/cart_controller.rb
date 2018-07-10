class CartController < ApplicationController

	before_action :authenticate_user!, except: [:add_to_cart, :view_order]


  def add_to_cart
  	line_item = LineItem.create(product_id: params[:product_id], quantity: params[:quantity])
  	
  	line_item.update(line_item_total: (line_item.quantity * line_item.product.price))
  
  	redirect_back(fallback_location: root_path)
  end

  def view_order
  	@line_items = LineItem.all
  end

  def checkout
    #this is what we need to do to define a checkout
    # collect all line items into an order
    #do each of the line items adding to order
    #figure out order sales tax etc
    #get rid of the line items after i have collected them into and order
    #looked at schema to see what we needed (line item, subtotal, etc)


    line_items = LineItem.all
    @order = Order.create(user_id: current_user.id, subtotal: 0)
    line_items.each do |line_item|
      line_item.product.update(quantity: (line_item.product.quantity - line_item.quantity))
      @order.order_items[line_item.product_id] = line_item.quantity
      @order.subtotal += line_item.line_item_total
    end
    @order.save #outside the each do loop because we only need to save once-inside the loop 
      # makes it redundant

    @order.update(sales_tax: (@order.subtotal * 0.07))
    @order.update(grand_total: (@order.sales_tax + @order.subtotal))
    line_items.destroy_all

   

  end
end
