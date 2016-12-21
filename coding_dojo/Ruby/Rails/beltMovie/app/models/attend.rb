class Attend < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
end
