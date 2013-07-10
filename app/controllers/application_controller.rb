class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_for_admin_cookie 
  before_filter :url
  
  def url
  	@current_url = "http://" + "#{request.host}" + "#{request.fullpath}"
  	@url_array = @current_url.split('/')
  	@status = @url_array[4]
  	#binding.pry
  	#@status = "#{@current_url}" - "http://localhost:3000/statuses/"
  end

  def check_for_admin_cookie
  	if cookies[:admin].present? &&  cookies[:admin] == "rowijiffrqhoqjojjjmm"
  		@user = "admin"
  	end
  end
end
