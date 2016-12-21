class FormsController < ApplicationController
	def index
		@locations = ['Dallas', 'San Jose']
		@languages = ['php', 'RoR', 'Python']
	end
	def create
		session['form_data'] = form_params
		redirect_to '/info'
	end
	def info

	end

	private
		def form_params
			params.require(:form).permit(:name, :location, :language, :comment)
		end

end
