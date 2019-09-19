class UsersController < ApplicationController
  before_action :authenticate_user!, only:[:show]
  def show
    @user = User.find(current_user.id)
    @ventecar=[]
    @listvente = @user.cars.where(option: "Vente")
    @listvente.each do |car|
      @ventecar << car
    end
    @locationcar=[]
    @listlocation=@user.cars.where(option: "Location")
    @listlocation.each do |car|
      @locationcar << car
    end

  end
end
