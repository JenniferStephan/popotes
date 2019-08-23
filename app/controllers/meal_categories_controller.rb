class MealCategoriesController < ApplicationController
  before_action :set_meal, only: [:new, :create]
  def new
    @meal_category = MealCategory.new
  end

  def create
  end

  private

  def meal_category_params
    params.require(:meal_category).permit(:ingredient_id, :meal_id)
  end

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
