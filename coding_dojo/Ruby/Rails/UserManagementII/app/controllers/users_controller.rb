class UsersController < ApplicationController
	def index
	end
	def users
		@users = User.all
	end
	def new
		
	end
	def create
		User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		redirect_to '/users'
	end
end