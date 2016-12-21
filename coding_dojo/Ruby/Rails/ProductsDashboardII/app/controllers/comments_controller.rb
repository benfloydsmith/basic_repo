class CommentsController < ApplicationController
	def comments
		@comments = Comment.all
	end
	def create
		Comment.create(comment: params[:comment], product_id: params[:id])
		redirect_to '/comments'
	end
end
