class CartController < ApplicationController
  def add_to_cart
  	line_item = LineItem.create(product_id: params[:product_id], quantity: params[:quantity])
  	
  	line_item.update(line_item_total: (line_item.quantity * line_item.products.price))
  
  	redirect_back(fallback_location: root_path)
  end

  def view_order
  end

  def checkout
  end
end
