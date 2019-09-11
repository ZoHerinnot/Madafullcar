class City < ApplicationRecord
	has_many :cars
	validates :name, presence: true,length: {maximum: 150}
end
