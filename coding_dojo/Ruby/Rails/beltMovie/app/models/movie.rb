class Movie < ActiveRecord::Base
	validates :title, :description, :rating, :director, :length, presence: true
	belongs_to :user
	belongs_to :theater
	has_many :attends
  	has_many :users_attending, through: :attends, source: :user, dependent: :destroy
  	has_many :stars, as: :starable, dependent: :destroy
end
