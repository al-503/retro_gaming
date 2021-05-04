class OffersController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
    @offers = Offer.all
  end

  def article_params
    params.require(:article).permit(:photo)
  end
end
