class CarController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create,:edit]

  def index
    if params[:annonce] != 'vente' && params[:annonce] != 'location'
      redirect_to '/'
    else
      if params[:annonce] == 'vente'
        @car = Car.where(option:'Vente')
      else
        @car = Car.where(option:'Location')
      end
    end
  end

  def show
    @car = Car.find(params[:id])
    @mark = Mark.find_by(name: "#{@car.mark.name}")
    @like = Like.new
    @like = @car.likes
     @cars = @mark.cars
    if user_signed_in?
      @pre_like = @car.likes.find { |like| like.user_id == current_user.id}
    end
    @comments = @car.comments
  end

  def new
    @car = Car.new
    @mark = Mark.all
    @model = Model.all
    @type = Type.all
    @energy = Energy.all
    @city = City.all
  end

  def create
    car_params = params.require(:car).permit(
      :price,
      :description,
      :etat,
      :year,
      :mileage,
      :number_place,
      :climatisation,
      :transmission,
      :telephone,
      :option,
      :status,
      :mark_id,
      :model_id,
      :type_id,
      :energy_id,
      :city_id,
      pictures: [])

    @car = Car.new(car_params)
    @car.user_id = current_user.id
    @car.save
    redirect_to(root_path)
  end

  def edit
    @car = Car.find(params[:id])
    @mark = Mark.all
    @model = Model.all
    @type = Type.all
    @energy = Energy.all
    @city = City.all
  end

  def update
    @car = Car.find(params[:id])
    car_params = params.require(:car).permit(
      :price,
      :description,
      :etat,
      :year,
      :mileage,
      :number_place,
      :climatisation,
      :transmission,
      :telephone,
      :option,
      :status,
      :mark_id,
      :model_id,
      :type_id,
      :energy_id,
      :city_id,
      pictures: [])
    @car.update(car_params)
    redirect_to(car_path(params[:id]))
  end
  def destroy
  end
end
