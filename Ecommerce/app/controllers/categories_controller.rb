class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def show
    @category = Category.find(params[:id])
    @q = @category.items.ransack(params[:q])
    @pagy, @items = pagy(@q.result(distinct: true))
  end
end
