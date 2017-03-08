class RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.new(restaurant_params).save
    redirect_to_restaurants_path
  end

  def edit
  end

  def update
    @restaurant.update(task_params)
    redirect_to_restaurants_path
  end

  def destroy
    @restaurant.delete
    redirect_to_restaurants_path
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
