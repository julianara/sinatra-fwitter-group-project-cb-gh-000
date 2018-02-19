class UsersController < ApplicationController 

	get '/users/:slug' do 
		@user = User.find_by_slug(slug)
		erb :'/users/show'
	end 

	# Sign Up 
	get '/signup' do 
		if !logged_in?
		  erb :'/users/create_user'
		else 
		  redirect to '/tweets'
		end 
	end 

	post '/signup' do 
		if (params[:username] == "" || params[:username] == " " ||
			params[:email] == "" || params[:email] == " " ||
			params[:password] == "" || params[:password] == " ")

			redirect to '/signup'	
		end
		@user = User.new(username: params["username"], email: params["email"], password: params["password"])
		@user.save 
		session[:id] = @user.id 

		redirect to '/tweets'
 	end 

	# Log In 
	get '/login' do 
	end 

	post '/login' do 
	end 

	# Logout 
	get '/logout' do 
	end 

end 