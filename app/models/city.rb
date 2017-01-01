class City < ActiveRecord::Base
  belongs_to :state
  has_many :jobs
  
  def slug
    name.downcase.gsub(" ", "-") 
  end 
  
  
  # slug is the method called above, returns the properly formatted id state name when called. 
  def to_param
     "#{id}-#{slug}-"
  end
  
  
end
