class AnswersController < ApplicationController
	before_action :authenticate_user!, only:[:new,:create]

	def new
		@answer = Answer.new
	end
	def create
		@comment = Comment.find(params[:id])
		@answer = Answer.create(content: params[:content], user_id: current_user.id, comment_id: @comment.id)
		redirect_to car_path(@comment.car.id)
	end
end
