class ItemsController < ApplicationController

  def index
    @items = Item.all
    @purchasing = Purchasing.find(1)
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

end