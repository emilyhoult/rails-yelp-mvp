class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create(attributes)
    @restaurant = Restaurant.new(attributes)
    @restaurant.save
    redirect_to restaurants_path
  end

end
