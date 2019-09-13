class CommentsController < ApplicationController
	before_action :authenticate_user! 

	def new
		@comment = Comment.new
	end

	def create
 @comment = Comment.create(content: params[:content], user_id: current_user.id, car_id: params[:id])	
		redirect_to car_path(params[:id])
	end

	def show
		@comment = Comment.find(params[:id])
		@answer = @comment.answers
		
	end

	def destroy
		@comments = Comment.find(params[:id])
    @comments.destroy
    redirect_to car_path(@comments.car.id)
	end
end
