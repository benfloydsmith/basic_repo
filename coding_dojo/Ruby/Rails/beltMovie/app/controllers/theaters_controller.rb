class TheatersController < ApplicationController
	def index
		@theaters = Theater.all
	end
	def show
		@theater = Theater.find(params[:id])
		@movie = Theater.find(params[:id]).movies
	end

end
