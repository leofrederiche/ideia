class Ideas < ActiveRecord::Base
	validates_length_of :title, maximum: 15
	validates_length_of :description, maximum: 50
	validates_length_of :idealizer, maximum: 20
end
