class CarController < ApplicationController
  def index
    @car = Car.all
  end

  def show
    @car = Car.find(params[:id])
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

