class OffersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @offers = Offer.all
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
