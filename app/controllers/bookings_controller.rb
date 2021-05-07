class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `offer_id` to associate review with corresponding offer
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    @booking.total_price = ((@booking.end_date - @booking.start_date + 1).to_i * @offer.price_per_day/86_400).round(2)
    @booking.status = "Pending"
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to profil_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to profil_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
