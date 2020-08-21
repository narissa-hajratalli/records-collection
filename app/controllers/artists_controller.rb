class ArtistsController < ApplicationController
  # GET - show ONE artist
  def show
    @single_artist = Artist.exists?(params[:id])

    if @single_artist
      render :json => {
          :response => "Successful.",
          :data => Artist.find(params[:id])
      }
    else
      render :json => {
          :response => "Artist not found."
      }
    end
  end

end
