class StaticPagesController < ApplicationController
  def home
		@vente = Car.all.where(option:"Vente") 
		@vente = @vente[0..5]
		
		@location = Car.all.where(option:"Location") 
		@location = @location[0..5]
  end
end
