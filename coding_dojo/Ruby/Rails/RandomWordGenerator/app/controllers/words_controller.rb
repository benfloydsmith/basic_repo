class WordsController < ApplicationController
	def index
		if !session[:counter]
			session[:counter] = 0
		end
		session[:counter] +=1
		@rando = 14.times.map { [*'0'..'9', *'A'..'Z'].sample }.join
	end
end
