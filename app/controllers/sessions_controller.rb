class SessionsController < ApplicationController
	#get login
	def new

	end

	#post login
	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
		else
			flash[:error] = "There is something wrong with your username or password"
			redirect_to login_path
		end
		user.authenticate()

	end

	#get /logout
	def destroy

	end


end