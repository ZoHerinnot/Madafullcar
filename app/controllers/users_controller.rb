class UsersController < ApplicationController
  before_action :authenticate_user!, only:[:show]

  def index
    @users = User.all
    @user = []
    nom = params[:last_name].downcase
    @users.each do |user|
      if (user.last_name == nom) || (user.first_name == nom) || (user.first_name == nom.split[0]) || (user.last_name == nom.split[1]) 
        @user << user
      end
    end
  end


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
