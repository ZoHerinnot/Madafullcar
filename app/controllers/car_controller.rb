class CarController < ApplicationController
  def index
    @car = Car.all
  end

  def show

      @car = Car.find(params[:id])
    if user_signed_in?
      @pre_like = @car.likes.find { |like| like.user_id == current_user.id}
    end
    
    @comments = @car.comments

  end
  def new
    @car = Car.new
  end

  def create
  end

  def edit
  end

  def updatedestroy
  end
end

