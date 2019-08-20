class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def view_my_meals
    @my_meals = Meal.where(user: current_user)
  end
end
