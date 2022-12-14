class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to car_path(@car)
    else
      flash.now[:alert] = "Couldn't create the car"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      flash[:notice] = "Car updated successfully"
      redirect_to car_path(@car)
    else
      flash.now[:alert] = "Unable to update car"
      render :edit
    end
  end

  def destroy
    @car = Car.find(params[:id])
    
    if @car.destroy
      flash[:notice] = "Car crashed successfully"
      redirect_to cars_path
    else
      flash.now[:alert] = "Failed to crash car"
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, variants_attributes: [:variation, :top_speed, :price, :_destroy, :id])
  end
end
