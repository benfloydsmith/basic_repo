class ProductsController < ApplicationController
	def products
		@products = Product.all
	end
	def show
		@show = Product.find(params[:id])
	end
	def create
		Product.create(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
		redirect_to '/products'
	end
	def edit
		@edit = Product.find(params[:id])
	end
	def new
	
	end
	def update
		Product.find(params[:id]).update(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
		redirect_to '/products'
	end
	def delete
		Product.find(params[:id]).destroy
		redirect_to '/products'
	end
	def category
		@category = Category.find(params[:id])
	end
end
