class UsersController < ApplicationController
	before_action :require_correct_user, only: [:edit, :update]
	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to "/networks"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to root_path
		end
	end
	def show
		@user = User.find(params[:id])
	end
	def index
		
		@users = User.where.not(email:current_user.email, id: current_user.friends)
	end
	private
		def user_params
			params.require(:user).permit(:name,:email, :description, :password, :password_confirmation)
		end
end
