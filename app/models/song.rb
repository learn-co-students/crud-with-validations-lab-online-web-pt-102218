class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :release_year, presence: true
    validates :release_year, absence: true
    validates :released, inclusion: {in: [true, false]}
end
