class FriendsController < ApplicationController
	def index
		@my_friends = Friend.where(friend_id:current_user.user_id)
		@other_friends =
	end
end
