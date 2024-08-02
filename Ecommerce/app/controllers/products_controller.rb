class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Item.ransack(params[:q])
    @item = @q.result(distinct: true)
  end
  
  def Category_Product
    @category = Category.find(params[:id])
    @q = @category.items.ransack(params[:q])
    @items = @q.result(distinct: true)
    render :Category_Product
  end
end
