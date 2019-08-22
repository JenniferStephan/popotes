class ReviewsController < ApplicationController
  def new
    @meal = Meal.find(params[:meal_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @meal = Meal.find(params[:meal_id])
    @user = current_user
    @review.user = @user
    @review.meal = @meal
    @review.save
    redirect_to meal_path(@meal)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
