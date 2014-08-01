class Ideas < ActiveRecord::Base
	validates_length_of :description, maximum: 50
end
