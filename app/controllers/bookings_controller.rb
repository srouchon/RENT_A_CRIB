class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new(user_id: current_user)
    @product = Product.find(params[:product_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.product = Product.find(params[:product_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date)
  end
end
