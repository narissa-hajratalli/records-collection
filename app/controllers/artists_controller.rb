class ArtistsController < ApplicationController
  def create
    @new_artist = Artist.new(artist_params)
    if @new_artist.save
      render :json => {
          :data => @new_artist
      }
    else
      render :json => {
          :response => "unable to create new artist"
      }
    end
  end

  def artist_params
    params.permit(:name, :hot_100_hits)
  end
end
