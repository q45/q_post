class SessionsController < ApplicationController
	#get login
	def new

	end

	#post login
	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "You are logged in"
			redirect_to root_path
		else
			flash[:error] = "There is something wrong with your username or password"
			redirect_to login_path
		end
		#user.authenticate(:password)

	end

	#get /logout
	def destroy
		session[:user_id] = nil
		flash[:notice] = "You've logged out"
		redirect_to root_path
	end
end