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

  def search
    @search_string = Artist.where('name LIKE ?', "%#{params[:name]}%")
    puts @search_string
    if @search_string
      render :json => {
          :response => "Successful",
          :data => @search_string
      }
    else
      render :json => {
          :response => "Artist not found."
      }
    end
  end

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

  private

  def artist_params
    params.permit(:name, :hot_100_hits)
  end
end
