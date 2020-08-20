class Record < ApplicationRecord
  belongs_to :artist
  validates_presence_of :title, :release_year, :cover_image
end
