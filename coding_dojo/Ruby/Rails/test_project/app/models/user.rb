class User < ActiveRecord::Base
	has_many :producs  #misspelled on purpose
   #has_one   if its is a One-to-One

   #EX: Message Board
#class User <ActiveRecord::Base
   #has_many :blogs
   #has_many :messages, through: :blogs
   #end

#class Blog <ActiveRecord::Base
	#belongs_to :user
	#has_many :messages
#end

#class Message <ActiveRecord::Base
	#belongs_to :blog
#end


	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20 }
	validates :email, presence: true, uniqueness: {case_sensitive: false }, format: { with: EMAIL_REGEX }
end

	before_save do
		self.email.downcase! #lowercase all letters in email
	end
	before_create do
		self.admin = false #assuming there is an admin field with boolean value
	end

	#We can create our own Methods to use like .all, .find, and .create
	def full_name
		self.first_name + " " + self.last_name
		#User.find(1).full_name will return a string of both first and last name 
	end

	#Creates a boolean value of a Method
	def admin?
		self.admin
	end

	def self.average_age
		users = User.all
		total_age = 0
		users.each do |user|
			total_age += user.age
		end
		total_age / User.count
	end
	User.average_age #will give me the average age of all Users
end



