
class UsersController < ApplicationController
	before_action :require_login, except: [:new, :create]
	before_action :require_correct_user, only: [:show, :edit, :update, :delete]
	
	def new
	end
	def show
		@user = User.find(params[:id])
	end
	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to "/users/#{session[:user_id]}"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to "/users/new"
		end
	end
	def edit
	end	
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:success] = "User successfully updated"
			redirect_to "/users/#{session[:user_id]}"
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to '/users/new'
		end
	end
	def delete
		if User.find(params[:id]).destroy
			flash[:success] = "User deleted"
			reset_session
			redirect_to '/sessions/new'
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to '/users/new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

end
