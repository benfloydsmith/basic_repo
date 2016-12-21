class Theater < ActiveRecord::Base
	has_many :movies, dependent: :destroy
	has_many :stars, as: :starable
end
