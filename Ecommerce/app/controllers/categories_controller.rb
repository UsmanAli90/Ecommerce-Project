class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:id])
    @q = @category.items.ransack(params[:q])
    @items = @q.result(distinct: true)
  end
end
