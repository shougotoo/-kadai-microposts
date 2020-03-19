class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @micropost = Micropost.find(params[:favorite_id])
    current_user.favorite(@micropost)
#    redirect_to current_user
    redirect_back(fallback_location: root_path)

  end

  def destroy
    @micropost = Micropost.find(params[:favorite_id])
    current_user.unfavorite(@micropost)
    redirect_back(fallback_location: root_path)
  end
end
