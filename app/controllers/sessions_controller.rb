class SessionsController < ApplicationController
	def new
	end
	
	def create
		@user = User.find_by_username(params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id 
			flash[:message] = 'you are logged in'
			redirect_to "/users/#{@user.id}"
		else 
			flash[:message] = 'try again'
			redirect_to '/login'
		end
	end


	def destroy
		session[:user_id] = nil
		flash[:message] = 'logged out'
		redirect_to '/login'
	end
end
