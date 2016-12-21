require 'json'
require 'net/http' # to make a GET request
require 'open-uri' # to fetch the data from the URL to then be parsed by json

class SecretsController < ApplicationController
	before_action :require_login, only: [:show, :create, :delete]
	$emoji_uri = "https://api.github.com/emojis"

	def get_api
	     uri = URI.parse($emoji_uri)
	     http = Net::HTTP.new(uri.host, uri.port)
	     # to be able to access https URL, these lines should be added
	     # github api has an https URL
	     http.use_ssl = true
	     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	     request = Net::HTTP::Get.new(uri.request_uri)
	     response = http.request(request)
	     # store the body of the requested URI (Uniform Resource Identifier)
	     data = response.body
	     # to parse JSON string; you may also use JSON.parse()
	     #JSON.load() turns the data into a hash
	     @emoji = JSON.load(data)
	end

	def show
		get_api
		@secret = Secret.all
	end
	def create
		secret = Secret.new(user: current_user, content: params[:content])
		if secret.save
			flash[:success] = "Saved Secret to User"
			redirect_to "/users/#{session[:user_id]}"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to '/users/new'
		end
	end
	def delete
		secret = Secret.find(params[:id])
		secret.destroy if secret.user == current_user
		redirect_to "/users/#{session[:user_id]}"
	end
end
