class RpgsController < ApplicationController
	def index
		if !session[:gold] then
			session[:gold] = 0
		end
		if !session[:activity] then
			session[:activity] = []
		end
	end
	def farm
		farm = rand(10..20)
		session[:gold] += farm 
		session[:activity] << "Earned #{farm} gold from the farm! " + Time.now.strftime("%Y/%m/%d %I:%M %P")
		redirect_to '/rpg'
	end
	def cave
		cave = rand(5..10)
		session[:gold] += cave
		session[:activity] << "Earned #{cave} gold from the cave! " + Time.now.strftime("%Y/%m/%d %I:%M %P")
		redirect_to '/rpg'
	end
	def house
		house = rand(2..5)
		session[:gold] += house
		session[:activity] << "Earned #{house} gold from the House! " + Time.now.strftime("%Y/%m/%d %I:%M %P")
		redirect_to '/rpg'
	end
	def casino
		casino = rand(-50..50)
		session[:gold] += casino
		if casino < 0 then
			session[:activity] << "lost #{casino} gold from the Casino! " + Time.now.strftime("%Y/%m/%d %I:%M %P")
		else
			session[:activity] << "Earned #{casino} golds from the Casino! " + Time.now.strftime("%Y/%m/%d %I:%M %P")


		end
		redirect_to '/rpg'
	end
end







