class Mark < ApplicationRecord
	has_many :cars
	has_many :models
	validates :name,presence:true
end
