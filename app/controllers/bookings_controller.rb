class BookingsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to product_booking_path(@booking.product)
  end
end