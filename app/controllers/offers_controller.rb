class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
        offers.name ILIKE :query \
        OR offers.description ILIKE :query \
      "
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
    else
      @offer = Offer.all
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
    params.require(:offer).permit(:name, :description, :price_per_day, :photo)
  end
end
