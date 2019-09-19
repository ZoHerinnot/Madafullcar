class StaticPagesController < ApplicationController
  include StaticPagesHelper

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
    if params[:search_model].blank?
      if params[:car] == nil
        redirect_back fallback_location: '/', allow_other_host: false
      else
        @car = params[:car]
        if (@car[:mark_id] != "")  || (@car[:model_id] != "") || (@car[:energy_id] != "") || (@car[:type_id] != "") || (@car[:city_id] != "") || (@car[:year] != "") || (@car[:transmission] != "") || (@car[:climatisation] != "") || (@car[:option] != "") || (@car[:price] != "0")
          @results = Car.all

          if @car[:model_id] != ""
            @results = @results.where(model_id:@car[:model_id])
            if @results.length == 0
              return
            end
          end

          if @car[:energy_id] != ""
              @results = @results.where(energy_id:@car[:energy_id])
              if @results.length == 0
                return
              end
          end

          if @car[:type_id] != ""
            @results = @results.where(type_id:@car[:type_id])
            if @results.length == 0
              return
            end
          end

          if @car[:city_id] != ""
            @results = @results.where(city_id:@car[:city_id])
            if @results.length == 0
              return
            end
          end


          if @car[:year] != ""
            @results = @results.where(year:@car[:year].to_i)
            if @results.length == 0
              return
            end
          end

          if @car[:transmission] != ""
            @results = @results.where(transmission:@car[:transmission])
            if @results.length == 0
              return
            end
          end

          if @car[:climatisation] != ""
            @results = @results.where(climatisation:@car[:climatisation])
            if @results.length == 0
              return
            end
          end

          if @car[:option] != ""
            @results = @results.where(climatisation:@car[:climatisation])
            if @results.length == 0
              return
            end
          end

          if @car[:price] != "0"
            @new_result = []
            @results.each do |car|
              if car.price <= @car[:price].to_i
                @new_result.push(car)
              end
            end
            @results = @new_result
            if @results.length == 0
              return
            end
          end
          
        else
          redirect_back fallback_location: '/', allow_other_host: false
        end
      end
    else
      @parameter = params[:search_model]
      @mark = Mark.all.where("name LIKE ?", "#{@parameter.downcase}%")
      @results = @mark[0].cars
    end
  end
end
