class AttendsController < ApplicationController
	def create
		movie = Movie.find(params[:movie_id])
		if movie.rating == "R" && current_user.age < 17
			flash[:errors] = ['Must be 17 or Older to buy this ticket']
			redirect_to :back
		else
			Attend.create(user:current_user, movie: movie)
			redirect_to :back
		end
	end
end
