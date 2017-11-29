class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def states
    @states = State.all  
  end
  # This helper method is called from application.html.erb
  # just need to call states instead of @states
  helper_method :states
  
  
  def job
    @job = Job.new
  end
  helper_method :job
  


  
 
  
 
  
  
  
end
