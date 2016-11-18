class FavoritesController < ApplicationController
  def index
    @favs = Favorite.all
  end

  def create
    fav = Favorite.create(fav_params)
    fav.errors.messages.each do |attr, msg|
      flash[:danger] = msg[0]
    end
    redirect_to favorites_path
  end

  def show
    @favs = Favorite.all
  end

  def destroy
    Favorite.find(params[:id]).delete
    redirect_to favorites_path
  end

  private
  
  def fav_params
    params.require(:favorite).permit(:track, :artist, :preview, :price)
  end
end
