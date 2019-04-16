class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year] } 

  validates :released, inclusion: { in: [true, false] } 
  validates :release_year, presence: { message: "Release year can't be blank if song is released" }, if: :released? # Proc.new { |s| s.released }# released is true
  validate :release_year_cannot_be_in_the_future

  validates :artist_name, presence: true

  def release_year_cannot_be_in_the_future
    if release_year.present? && release_year > Date.today.year.to_i
      errors.add(:release_year, "can't be in the future")
    end
  end


end
