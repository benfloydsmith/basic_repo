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
	def edit
		@edit = User.find(params[:id])
	end
	def update
		User.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
		redirect_to '/users'
	end
	def show
		@show = User.find(params[:id])
	end
	def delete
		User.find(params[:id]).destroy
		redirect_to '/users'
	end
end