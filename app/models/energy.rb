class Energy < ApplicationRecord
	has_many :cars
	validates :name, presence: true,length: {maximum: 40}
end
