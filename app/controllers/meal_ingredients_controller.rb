class MealIngredientsController < ApplicationController
  before_action :set_meal, only: [:new, :create]

  def new
    @meal_ingredient = MealIngredient.new
    @meal_category = MealCategory.new
  end

  def create
    params[:ingredient].each do |ingredient|
      MealIngredient.create(ingredient: Ingredient.find_by_name(ingredient), meal: @meal)
    end

    params[:categories].drop(1).each do |categ|
      MealCategory.create(meal: @meal, category: Category.find(categ))
    end
    redirect_to meal_path(@meal)
  end

  private

  def meal_ingredient_params
    params.require(:meal_ingredient).permit(:ingredient_id, :meal_id)
  end

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
