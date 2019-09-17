class AbonnementController < ApplicationController
  def index
  	@gold = User.find(current_user.id).gold
	@premium = User.find(current_user.id).premium
  end
end
