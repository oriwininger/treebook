class ApplicationController < ActionController::Base
  protect_from_forgery 
  before_filter :url
  before_filter :authenticate_user!
#  before_filter :redis_counter
  
 # def redis_counter
  #  if cookies[:couqwvntebbcrq3ouhvddt] != "bvqoroqvoqvoqriqo" or cookies[:couqwvntebbcrq3ouhvddt].present?
   #   $redis.set "entrances_counter", 0
    #  $redis.incr "entrances_counter"
    #  cookies[:couqwvntebbcrq3ouhvddt] = "bvqoroqvoqvoqriqo"
    #end
 # end   
  
  def url
  	@current_url = "http://" + "#{request.host}" + "#{request.fullpath}"
  	@url_array = @current_url.split('/')
  	@status = @url_array[4]
  	#binding.pry
  	#@status = "#{@current_url}" - "http://localhost:3000/statuses/"
  end
end
