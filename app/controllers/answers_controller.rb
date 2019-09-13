class AnswersController < ApplicationController
	before_action :authenticate_user!
	

	def new
		@answer = Answer.new
	end

	def create
puts "=" *60
puts params.inspect
puts "="*60

		@comment = Comment.find(params[:id])
		@answer = Answer.create(content: params[:content], user_id: current_user.id, comment_id: @comment.id)	
		redirect_to car_path(@comment.car.id)
		
	end
end
