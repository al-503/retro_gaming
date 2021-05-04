class OffersController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offers = Offer.new
    offer.save
  end


end
