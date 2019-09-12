class StaticPagesController < ApplicationController
  def home
    @car = Car.all
  end
end
