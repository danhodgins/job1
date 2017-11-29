class Job < ActiveRecord::Base
  
  belongs_to :state
  belongs_to :city
  
  # I think this passes the city_id and state_id into new job objects. 
  accepts_nested_attributes_for :city, :state
  
  # title is an attribute of a job
 
 # def slug
   # title.downcase.gsub(" ", "-") 
 # end 
  
  
  # slug is the method called above, returns the properly formatted id state name when called. 
 #def to_param
  #   "#{id}-#{slug}-"
  #end
  
  
  def self.show_me
    @thing = "Haha bitch!" 
  end
  
  
  def self.get_indeed_data

  indeed = Indeed::Client.new ("4334069173238194")
 

  params = {
    :q => 'java',
    :l => 'seattle',
      :userip => '1.2.3.4',
      :useragent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2)',
      :jobkeys => ["5898e9d8f5c0593f", "c2c41f024581eae5"] 
    }
    
    data = indeed.search(params)
    
    #data["results"].each do |d|
      #create(title: d["jobtitle"])
      #end
    
      # Grab all jobs
      indeed_jobs = data
         
      
      #Job.create!(data)

     
      
      # http://stackoverflow.com/questions/19081129/how-would-i-save-multiple-records-at-once-in-rails
      
  end #self.get_indeed_data
  
end #class 



