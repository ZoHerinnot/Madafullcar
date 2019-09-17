class Model < ApplicationRecord
	has_many :cars
	validates :name, presence: true
end
