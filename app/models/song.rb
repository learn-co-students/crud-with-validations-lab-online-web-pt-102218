class Song < ApplicationRecord
    validates :title, presence: true
    validates :released, inclusion: { in: [true, false] }
    validate :valid_release_year?  
    validates :artist_name, presence: true 
    
end

def valid_release_year?
   
   if self.released == false 
     true 
    
   elsif self.release_year != nil && self.release_year <= Date.current.year 
     true 
   else 
    false 
   end
end