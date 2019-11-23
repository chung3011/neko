class FoodsController < ApplicationController
  def index
	@foods = Food.all
    @food_booking = current_order.food_bookings.new
  end
end
