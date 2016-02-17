class User < ActiveRecord::Base
	validate  :mob 
	has_many :surveys
end
