class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: {scope: [:release_year, :artist_name], message: "cannot be repeated by the same artist in the same year"}
  validates :artist_name, presence: true
  validates :release_year, release_year: true
  validates :released, inclusion: {in: [true, false]}
end
