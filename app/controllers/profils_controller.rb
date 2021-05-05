class ProfilsController < ApplicationController

  def show
    @profil = current_user

  end
end
