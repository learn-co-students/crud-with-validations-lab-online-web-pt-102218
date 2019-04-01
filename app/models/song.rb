class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :release_year, presence: true
    validates :released, inclusion: {in: [true, false]}
    validates :release_year, length: {maximum: Time.now.year}
end
