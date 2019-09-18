class LikesController < ApplicationController
	before_action :authenticate_user!

	def create
		@car = Car.find(params[:car_id])
		unless already_liked?
		    @like = @car.likes.new(user_id: current_user.id,car_id:params[:car_id])
		    @like.save
		    respond_to do |format|
					format.html {redirect_to car_path(params[:car_id])}
					format.js { }
				end
		end
	end

	def destroy
  	@car = Car.find(params[:car_id])
  	@like = @car.likes.find(params[:id])
    @like.destroy
    respond_to do |format|
					format.html {redirect_to car_path(params[:car_id])}
					format.js { }
				end
	end

 	private
	def already_liked?
	  Like.where(user_id: current_user.id, car_id:
	  params[:car_id]).exists?
	end

end
