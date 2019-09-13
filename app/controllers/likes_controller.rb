class LikesController < ApplicationController
	before_action :authenticate_user!

	def create
		unless already_liked?
		    @like = Like.create(user_id: current_user.id,car_id:params[:car_id])
		    redirect_to car_path(params[:car_id])
		end
	end

	def destroy
  	@car = Car.find(params[:car_id])
  	@like = @car.likes.find(params[:id])
    @like.destroy
	  redirect_to car_path(params[:car_id])
	end

 	private
	def already_liked?
	  Like.where(user_id: current_user.id, car_id:
	  params[:car_id]).exists?
	end

end
