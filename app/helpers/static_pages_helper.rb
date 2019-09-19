module StaticPagesHelper
  def car_option_vente(cars)
    array_cars = []
    cars.each do |car|
      if car.option == 'Vente'
        array_cars.push(car)
      end
    end
    return array_cars
  end
  def car_option_location(cars)
    array_cars = []
    cars.each do |car|
      if car.option == 'Location'
        array_cars.push(car)
      end
    end
    return array_cars
  end
end
