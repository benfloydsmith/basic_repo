class SessionsController < ApplicationController
	# def new
	# 	if current_user
	# 		redirect_to "/users/#{session[:user_id]}"
	# 	end
	def login
		user = User.find_by_email(params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to "/users/#{session[:user_id]}"
		else
			flash[:errors] = ["Invalid combination"]
			redirect_to '/sessions/new'
		end
	end
end
