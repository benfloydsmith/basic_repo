class NumbersController < ApplicationController
	def index
		if !session[:number] then
			session[:number] = rand(1..100)
		end
	end
	def guess
		puts params[:guess], '$$$$$$$$$$$'
		puts session[:number], '$$$$$$$$$'
		if params[:guess].to_i == session[:number]
			flash[:success] = 'Correct! Great Job'
			redirect_to '/'
		elsif params[:guess].to_i > session[:number]
			flash[:incorrect] = 'Too High'
			redirect_to '/'
		else
			flash[:incorrect] = "Too Low"
			redirect_to '/'
		end
	end
	def restart
		session.clear
		redirect_to '/'
	end
end
