class NamesController < ApplicationController
	def users
		render json: User.all
	end
	def new
		@people = User.all
	end
	def create
		User.create(name: params[:name])
		redirect_to '/users'
	end
	def show
		@show = User.find(params[:id])
		# render json: User.find(params[:id])
	end
	def edit
		@edit = User.find(params[:id])
	end
	def total
		@total = User.all
	end
end
