require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitter_secret"
  end

  get '/' do 
  	erb :index 
  end 
end

helpers do 
  def logged_in?
  end 
  
  def current_user 
  end 
end 
