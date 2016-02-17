class Question < ActiveRecord::Base
	has_many :surveys
	validates_presence_of :quest
		
end
