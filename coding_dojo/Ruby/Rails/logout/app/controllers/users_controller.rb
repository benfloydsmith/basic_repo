class UsersController < ApplicationController
	def new
	end
	def show
		@user = User.find(params[:id])
	end
	# def create
	# 	user =User.new(user_params)
	# 	if user.save
	# 		session[:user_id] = user.id
	# 		redirect_to "/users/#{user[:user_id]}"
	# 	else
	# 		flash[:errors] = user.errors.full_messages

	# 	end
	# end
		
	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

end
