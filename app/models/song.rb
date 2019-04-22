class Song < ApplicationRecord

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :artist_name, presence: true
  validates :release_year, presence: true, if: :released == true
  validates :released, presence: true

end
