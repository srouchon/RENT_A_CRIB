class BookingsController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @booking = Booking.new(user_id: @user)
    @product = Product.find(params[:product_id])
  end

  def create
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :product_id)
  end
end
