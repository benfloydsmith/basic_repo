class LikesController < ApplicationController
	def like
		secret = Secret.find(params[:secret_id]) 
		Like.create(user: current_user, secret: secret)
		redirect_to '/secrets'
	end
	def unlike
		
		Like.where("user_id = #{current_user.id} and secret_id = #{params[:secret_id]}").destroy_all
		redirect_to '/secrets'
	end
end
