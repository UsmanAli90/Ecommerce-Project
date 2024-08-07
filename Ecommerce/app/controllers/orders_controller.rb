class OrdersController < ApplicationController
  def add_to_cart
    @order = current_order # Assuming you have a method to get the current order
    @item = Item.find(params[:item_id])
    # Assuming you have a way to add an item to the order, such as:
    @order.items << @item unless @order.items.include?(@item)
    # Redirect to the orders index or show page
    redirect_to orders_path, notice: 'Item added to cart.'
  end

  private

  def set_current_order
    @current_order = current_order
  end

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      order = Order.create
      session[:order_id] = order.id
      order
    end
  end
end
