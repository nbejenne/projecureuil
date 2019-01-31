class PicturesController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    # binding.pry
    @picture.album = Album.find(params[:album_id])
    @picture.membership = Membership.find_by(user: current_user)
    @picture.save!

    redirect_to album_path(Album.find(params[:album_id]))

  end

private

  def picture_params
    params.require(:picture).permit(:photo, :album_id, :membership_id)
  end
end
