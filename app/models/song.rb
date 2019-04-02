
class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :released, inclusion: {in: [true, false]}
    validates :release_year, numericality: {less_than: Time.now.year}, on: :released
end
