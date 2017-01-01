class State < ActiveRecord::Base

  has_many :citys
  has_many :jobs
  
  def slug
    name.downcase.gsub(" ", "-") 
  end 
  
  
  # slug is the method called above, returns the properly formatted id and state name when called. 
  def to_param
     "#{id}-#{slug}-"
  end

end
