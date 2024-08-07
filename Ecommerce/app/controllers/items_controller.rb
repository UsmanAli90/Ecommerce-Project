class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Item.ransack(params[:q])
    @item = @q.result(distinct: true)
    @pagy, @item = pagy(@item)
  end

  def show
    @item = Item.find(params[:id])
  end
end
