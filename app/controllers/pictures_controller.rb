class PicturesController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @picture = Picture.new(@album)
  end
end
