class Model < ApplicationRecord
	has_many :cars
	belongs_to :mark
	validates :name, presence: true
end
