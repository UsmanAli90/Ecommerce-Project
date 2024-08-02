class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = Item.ransack(params[:q])
    @item = @q.result(distinct: true)
  end
end
