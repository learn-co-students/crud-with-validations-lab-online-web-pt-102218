class Song < ApplicationRecord
    validates :title, presence: true
    validates :released, inclusion: { in: [true, false] }
    validate :valid_release_year?  
    validates :artist_name, presence: true 
    
end

def valid_release_year?
   
   if self.released == false && self.released != true 
     true 
   elsif self.release_year.try(:release_year).nil? == false && self.release_year <= Date.current.year 
     true 
   else 
    false 
   end
end