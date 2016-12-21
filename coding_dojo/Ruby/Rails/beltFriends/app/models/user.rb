class User < ActiveRecord::Base
  has_secure_password
  has_many :friends
  has_many :friendships, through: :friends, source: :friend
end
