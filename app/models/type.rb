class Type < ApplicationRecord
	has_many :cars
	validates :name, presence: true, length: {maximum: 5}
end
