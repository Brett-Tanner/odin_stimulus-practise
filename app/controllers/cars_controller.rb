class CarsController < ApplicationController

  private

  def car_params
    params.require(:car).permit(:brand, :model, variant_attributes: [:type, :top_speed, :price, :car_id])
  end
end
