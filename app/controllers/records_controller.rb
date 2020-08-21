class RecordsController < ApplicationController
  def create
    @new_record = Record.new(record_params)
    if Artist.exists?(@new_record.artist_id)
      if @new_record.save
        render :json => {
            :status => "successfully created the record",
            :data => @new_record
        }
      else
        render :json => {
            :status => "oops something went wrong"
        }
      end
    else
      render :json => {
          :error => "artist does not exist"
      }
    end
  end

  private
  def record_params
    params.permit(:id, :title, :release_year, :cover_image, :artist_id)
  end
end
