class FoodBookingsController < ApplicationController
  def create
	@order = current_order
    @food_booking = @order.food_bookings.new(food_booking_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
	@order = current_order
    @food_booking = @order.food_bookings.find(params[:id])
    @food_booking.update_attributes(food_booking_params)
    @food_bookings = @order.food_bookings
  end

  def destroy
	@order = current_order
    @food_booking = @order.food_bookings.find(params[:id])
    @food_booking.destroy
    @food_bookings = @order.food_bookings
  end
  
  private
  def food_booking_params
    params.require(:food_booking).permit(:quantity, :food_id)
  end
end
