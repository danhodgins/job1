module JobsHelper

   def indeed_jobs
     client = Indeed::Client.new ("4334069173238194")

     params = {
       :q => 'python',
       :l => 'vancouver',
       :userip => '1.2.3.4',
       :useragent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2)',
       :jobkeys => ["5898e9d8f5c0593f", "c2c41f024581eae5"] 
     }

     @data = client.search(params)

     #data["results"][0]["jobtitle"]
   
   
     #data["results"].each do |item|
      # puts item["jobtitle"]
       #puts item["snippet"]
     #end 
     #return @data
     
     
     
     return @data
 
  end
  
end
