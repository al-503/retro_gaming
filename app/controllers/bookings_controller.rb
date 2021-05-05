class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.save
    redirect_to offer_path(@offer)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
