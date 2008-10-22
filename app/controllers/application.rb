class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'be6f8ba30623e66e69fa13793ab64db0'
  
  def authenticate
    authenticate_or_request_with_http_basic('1219 Curator') do |username, password|
      username == '1219' and password == 'aoeu'
    end
  end
  
end
