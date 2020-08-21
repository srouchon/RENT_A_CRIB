class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @product = Product.find(params[:product_id])
    @favorite.product = @product
    @favorite.save
    redirect_to root_path(anchor: @product.id)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path
  end
end
