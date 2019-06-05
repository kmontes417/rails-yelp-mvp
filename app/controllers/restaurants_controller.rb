class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :rating)
  end
end
