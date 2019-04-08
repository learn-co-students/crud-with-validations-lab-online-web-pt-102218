class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :released, inclusion: { in: [true, false] }
    validate :valid_release_year?  
    validates :artist_name, presence: true 
    
end

def valid_release_year?
  
   if self.released == false 
     
   elsif self.release_year.nil? == false && self.release_year <= Date.current.year 
     
   else 
    errors.add(:release_year) 
   end
  
end