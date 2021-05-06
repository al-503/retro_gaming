class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
        offers.name ILIKE :query \
        OR offers.description ILIKE :query \
      "
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%").order(created_at: :desc)
    else
      @offers = Offer.all.order(created_at: :desc)
    end
    
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer })
      }
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user

    if @offer.save!
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def show
     @offer = Offer.find(params[:id])
     @booking = Booking.new
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :description, :price_per_day, :photo, :address)
  end
end
