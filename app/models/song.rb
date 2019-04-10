class Song < ApplicationRecord
    validates :title, presence: true
    validates :release_year, presence: true, if: :is_released?
    validate :release_year_not_in_future
    validate :not_repeated_in_same_year


    def is_released?
        self.released
    end 

    def release_year_not_in_future
        if is_released? && self.release_year && self.release_year > DateTime.now.year
            errors.add(:release_year, "cannot be released in the future")
        end
    end 

    def not_repeated_in_same_year
        if self.class.all.detect{|song| song.title == self.title && song.artist_name == self.artist_name}
            errors.add(:title, "cannot be repeated in the same year by the same artist")
        end 
    end 

end
