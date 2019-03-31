class MyValidator < ActiveModel::Validator
    def validate(song)
        binding.pry
        if Song.all.include?(song.title) && Song.all.include?(song.release_year)
            song.errors[:title] << 'invalid' 
        end
    end
end


class Song < ApplicationRecord
    validates :title, presence: true
    validates_with MyValidator
end
