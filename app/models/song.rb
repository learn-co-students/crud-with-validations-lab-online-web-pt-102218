class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist, :year] } 

  validates :released, inclusion: { in: [true, false] } 
  validates :release_year, presence: { message: "Release year can't be blank if song is released" }, if: :released? # Proc.new { |s| s.released }# released is true

  validates 
  belongs_to :artist

end
