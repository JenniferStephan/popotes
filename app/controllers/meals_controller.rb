class MealsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = Meal.geocoded

    @markers = @meals.map do |meal|
      {
        lat: meal.latitude,
        lng: meal.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { meal: meal }),
        image_url: helpers.asset_url('carottes.png')
      }
    end
  end

  def show
    @meal = Meal.find(params[:id])
    @order = Order.new
  end

  def view_my_meals
    @my_meals = Meal.where(user: current_user)

    my_received_orders = []
    @my_meals.each do |meal|
      my_received_orders << meal.orders
    end

    @my_received_orders = my_received_orders.flatten
  end



  def view_my_meal
    @my_meals = Meal.where(user: current_user)
    @my_meal = @my_meals.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @meal.update(meal_params)
    redirect_to meal_path(@meal)
  end

  def destroy
    @meal.destroy
    redirect_to my_meals_path
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :address, :category, :unit_price, :quantity_max, :start_availability_date, :end_availability_date, :photo)
  end
end
