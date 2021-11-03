class ApplicationController < ActionController::Base
  #Disable web based cross site forgery protection
  protect_from_forgery with: :null_session
end
