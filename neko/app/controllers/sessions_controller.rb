class SessionsController < ApplicationController
	def new
	end

	def create 
		if user = User.authenticate(params[:name], params[:password])
			session[:user_id] = user.id
			login_url user
			redirect_to user
		else
			flash.now[:danger] = "error"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/', :notice => "Logged out"
	end
end