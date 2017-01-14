class Job < ActiveRecord::Base
  belongs_to :state
  belongs_to :city
  
  accepts_nested_attributes_for :city, :state
  
  # title is an attribute of a job
 
 # def slug
   # title.downcase.gsub(" ", "-") 
 # end 
  
  
  # slug is the method called above, returns the properly formatted id state name when called. 
 # def to_param
 #    "#{id}-#{slug}-"
#  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end



