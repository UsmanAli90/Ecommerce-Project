class ProductdetailsController < ApplicationController
  def index
    @item = Item.find(params[:id])
  end
end
