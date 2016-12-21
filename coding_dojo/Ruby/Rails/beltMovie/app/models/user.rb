class User < ActiveRecord::Base
  has_secure_password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first, :last, presence: true
  validates :age, presence: true, numericality: true
  validates :email, presence: true, format: { with: email_regex }, uniqueness: { case_sensitive: false }
  
  has_many :movies
  has_many :movies_attended, through: :attends, source: :movie
  has_many :attends, dependent: :destroy
  has_many :stars, as: :starable
end
