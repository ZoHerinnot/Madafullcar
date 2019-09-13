class StaticPagesController < ApplicationController
  def home
    @car = Car.all
    @car = @car[0..5]

  end
end
