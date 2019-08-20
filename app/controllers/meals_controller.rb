class MealsController < ApplicationController
  def show
    @meal = Meal.find(params[:id])
    @order = Order.new
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :description, :address, :category, :unit_price, :quantity_max)
  end
end
