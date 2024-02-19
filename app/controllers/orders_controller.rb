class OdersController < ApplicationController
  def create
    @orders = current_user.orders.build
    current_user.cart.line_items.each do |item|
      @orders.line_items << items
    end

    if @orders.save
      redirect_to root_path, notice: "Order was successfull created"
    else
      redirect_to root_path, alert: "Order was not created"
  end
end