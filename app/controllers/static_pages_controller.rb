class StaticPagesController < ApplicationController
  def home
    @car = Car.all
    @car = @car[0..5]
#==========================#
    @mark = Mark.all
    @model = Model.all
    @type = Type.all
    @energy = Energy.all
    @city = City.all
#==========================#
  end

  def search
=begin
"car"=>{"mark_id"=>"", "model_id"=>"", "energy_id"=>"", "type_id"=>"",
"city_id"=>"", "year"=>"1990", "transmission"=>"", "climatisation"=>"",
"option"=>"", "price"=>"0"}, "commit"=>"Recherche",
"controller"=>"static_pages", "action"=>"search"}
=end
    if params[:search_model].blank?
      if params[:car] == nil
        redirect_back fallback_location: '/', allow_other_host: false
      else
        @car = params[:car]
        if (@car[:mark_id] != "")  || (@car[:model_id] != "") || (@car[:energy_id] != "") || (@car[:type_id] != "") || (@car[:city_id] != "") || (@car[:year] != "") || (@car[:transmission] != "") || (@car[:climatisation] != "") || (@car[:option] != "") || (@car[:price] != "0")
          keys = []
          @car.each do |k,v|
            if v != "" || v!= "0"
              keys << k
            end
          end

          Car.where(
            id:1, name:"4 stroke")


 MARK_ID | MODEL_ID | TYPE_ID | ENERGY_ID | CITY_ID

          @car[:mark_id]
          @car[:model_id]
          @car[:energy_id]
          @car[:type_id]
          @car[:city_id]
          @car[:year]
          @car[:transmission]
          @car[:climatisation]
          @car[:option]
          @car[:price]





          @results =



          redirect_to new_user_session_path #misy zavatra atao


        else
          redirect_back fallback_location: '/', allow_other_host: false
        end
      end
    else
      @parameter = params[:search_model]
      @results = Mark.all.where("name LIKE ?", "#{@parameter.downcase}%")
    end
  end
end
#{}:"map"WHERE CustomerName LIKE '%or%
#@results = Student.where("name LIKE ? AND city = ?", "#{params[:name]}%", params[:cityId])
