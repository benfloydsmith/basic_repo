class User < ActiveRecord::Base
	has_many :friendships, class_name: "Friendship", foreign_key: "user_id"
	#         ^^^^^ this name cant be the same as this name  -------^^^
	has_many :friends, through: :friendships
end
