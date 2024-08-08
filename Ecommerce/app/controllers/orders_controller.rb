class OrdersController < ApplicationController
  def index
  end

  def show
    @order = Order.find(params[:id])
  end

  def add_to_cart
    @item = Item.find(params[:item_id])
    @current_order = current_order
  
    if @current_order.nil?
      flash[:alert] = 'Could not create or find an order. Please try again.'
      redirect_to items_path and return
    end
    @current_order.order_items.create(item: @item, quantity: 1, price: @item.price, total_price: @item.price)
    redirect_to order_path(@current_order), notice: 'Item added to cart.'
  end
  
  private

  def set_current_order
    @current_order = current_order
  end

  def current_order
    if current_user
      if session[:order_id]
        Order.find_by(id: session[:order_id]) || create_new_order
      else
        create_new_order
      end
    else
      flash[:alert] = 'You need to sign in before adding items to your cart.'
      redirect_to new_user_session_path
    end
  end
  
  def create_new_order
    order = current_user.order.new(status: 'Pending')
    if order.save
      session[:order_id] = order.id
      order
    else
      Rails.logger.error("Order could not be created: #{order.errors.full_messages.join(', ')}")
      flash[:alert] = 'Order is not valid. Please try again.'
      redirect_to items_path
      nil
    end
  end
end