class CartsController < ApplicationController
  def show
	@food_bookings = current_order.food_bookings
  end
end
