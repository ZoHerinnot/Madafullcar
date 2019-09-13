class CarController < ApplicationController
  def index
    @car = Car.all
  end

  def show
    @car = Car.find(params[:id])
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
    car_params = params.require(:car).permit(:price,:description,:etat,:year,:mileage,:number_place,:climatisation,:transmission,:telephone,:option,:status,:mark_id,:model_id,:type_id,:energy_id,:city_id,pictures: [])
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    @car.save
    redirect_to(car_path(Car.last.id))
  end

  def edit
  end

  def update
  end
  def destroy
  end
end

