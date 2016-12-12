class PurchasingsController < ApplicationController

  def new
    @purchasing = Purchasing.new
  end

  def show
    @purchasing = Purchasing.find(params[:id])
  end

end