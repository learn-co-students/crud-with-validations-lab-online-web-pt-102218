class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { scope: [:release_year, :artist_name]}
    #title cannot be repeated by the same artist in the same year
    validates :released, inclusion: { in: [true, false] }

        validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.today.year }, if: :released?
     
        #less then or equal to the current year
        #validates :release_year, 
    
    validates :artist_name, presence: true
end
