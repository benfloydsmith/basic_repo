class PracticesController < ApplicationController
	def index
		render :text => "What do you want me to say?"
	end	
	def hello
		render :text => "Hello CodingDojo!"
	end
	def sayhello
		render :text => "Saying Hello"
	end
	def sayhellojoe
		render :text => "Saying Hello Joe"
	end
	def sayhellomichael
		redirect_to '/say/hello/joe'
	end
	def times
		if !session[:counter]
			session[:counter] = 0
		end
		session[:counter] += 1
		render :text => session[:counter]
	end
	def timesrestart
		session.clear  #fix this
		render :text => "Destroyed the session"
	end
end
